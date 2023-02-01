import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:is_it_safe_app/generated/l10n.dart';
import 'package:is_it_safe_app/src/app/modules/home/presenter/bloc/home_bloc.dart';
import 'package:is_it_safe_app/src/app/modules/home/presenter/widgets/home_drawer.dart';
import 'package:is_it_safe_app/src/app/modules/home/presenter/widgets/mount_getted_places.dart';
import 'package:is_it_safe_app/src/app/modules/home/presenter/widgets/need_permission_card.dart';
import 'package:is_it_safe_app/src/components/widgets/safe_app_bar.dart';
import 'package:is_it_safe_app/src/components/widgets/safe_empty_card.dart';
import 'package:is_it_safe_app/src/core/util/safe_log_util.dart';

class HomePage extends StatefulWidget {
  static const route = '/home/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeBloc> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    WidgetsBinding.instance.waitUntilFirstFrameRasterized.then((_) async {
      await _requestLocationPermission();
    });
    super.initState();
    SafeLogUtil.instance.route(Modular.to.path);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: FutureBuilder<HomeDrawerVO>(
          future: controller.getHomeDrawerInfo(),
          builder: (context, snapshot) {
            return HomeDrawer(
              name: snapshot.data?.userName,
              image: snapshot.data?.userImage,
            );
          },
        ),
        appBar: const SafeAppBar().home(
          onOpenDrawer: () {
            _scaffoldKey.currentState!.openEndDrawer();
          },
          onBottomTap: (tab) async {
            if (tab == 0) {
              await _requestLocationPermission();
            }
            if (tab == 1) {
              await controller.getBestRatedPlaces();
            }
          },
        ),
        body: TabBarView(
          children: [
            MountGettedPlaces(
              stream: controller.locationsNearUserController.stream,
              list: controller.listLocationsNeartUser,
              showErrorDialog: false,
              onEmpty: SafeEmptyCard.home(),
              onError: NeedPermissionCard(
                text: S.current.textErrorLocationPermission,
                buttonText: "Abrir configurações",
                onTapButton: () async {
                  await controller
                      .forcedRequestLocationPermission()
                      .then((granted) async {
                    if (granted) {
                      await controller.getLocationsNearUser();
                    }
                  });
                },
              ),
            ),
            MountGettedPlaces(
              stream: controller.bestRatedPlacesController.stream,
              list: controller.listBestRatedPlaces,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _requestLocationPermission() async {
    await controller.requestAppLocationPermission().then((granted) async {
      if (granted) {
        await controller.getLocationsNearUser();
      }
    }).timeout(const Duration(milliseconds: 400), onTimeout: () async {
      await controller.getLocationsNearUser();
    });
  }
}
