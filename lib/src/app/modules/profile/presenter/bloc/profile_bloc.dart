import 'dart:async';

import 'package:is_it_safe_app/src/domain/use_case/delete_review_use_case.dart';
import 'package:is_it_safe_app/src/domain/use_case/get_user_use_case.dart';
import 'package:is_it_safe_app/src/core/interfaces/safe_bloc.dart';
import 'package:is_it_safe_app/src/domain/entity/user_entity.dart';
import 'package:is_it_safe_app/src/domain/use_case/save_user_login_use_case.dart';
import 'package:is_it_safe_app/src/components/config/safe_event.dart';
import 'package:is_it_safe_app/src/service/api/configuration/api_interceptors.dart';
import 'package:is_it_safe_app/src/service/api/error/error_exceptions.dart';
import 'package:result_dart/result_dart.dart';

class ProfileBloc extends SafeBloC {
  final GetUserUseCase getUserUseCase;
  final SaveUserLoginUseCase saveUserLoginUseCase;
  final DeleteReviewUseCase deleteReviewUseCase;

  late StreamController<SafeStream<UserEntity>> userController;
  late StreamController<SafeStream<String>> deleteReviewController;

  ProfileBloc({
    required this.getUserUseCase,
    required this.saveUserLoginUseCase,
    required this.deleteReviewUseCase,
  }) {
    init();
  }

  @override
  Future<void> init() async {
    userController = StreamController.broadcast();
    getUser();
    deleteReviewController = StreamController.broadcast();
  }

  Future<void> getUser() async {
    try {
      userController.sink.add(SafeStream.load());
      await getUserUseCase.call().fold(
          (userEntity) => userController.sink.add(SafeStream.done(userEntity)),
          (error) => null);
    } on Exception catch (e) {
      if (e is UnauthorizedException) await ApiInterceptors.doLogout();
      userController.addError(e.toString());
    }
  }

  Future<bool> deleteReview({required int? idReview}) async {
    try {
      deleteReviewController.add(SafeStream.load());
      await deleteReviewUseCase.call(idReview).fold(
            (review) => deleteReviewController.add(SafeStream.done(review)),
            (error) => null,
          );
      return true;
    } catch (e) {
      deleteReviewController.addError(e.toString());
      return false;
    }
  }

  @override
  Future<void> dispose() async {
    userController.close();
    deleteReviewController.close();
  }
}
