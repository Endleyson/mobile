import 'package:flutter_modular/flutter_modular.dart';
import './my_account_controller.dart';
import './my_account_page.dart';

class MyAccountModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MyAccountBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const MyAccountPage()),
  ];
}
