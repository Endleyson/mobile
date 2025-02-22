import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';

abstract class ISharedPreferencesService {
  void saveOnBoarding(bool value);
  Future<bool> readOnBoarding();
  void saveLogin(bool value);
  Future<bool> readLogin();
  void saveToken(String value);
  Future<String> readToken();
  void saveRefreshToken(String value);
  Future<String> readRefreshToken();
  void saveUserAuth(FormData value);
  Future<FormData> readUserAuth();
  void saveTheme(bool value);
  Future<bool> readTheme();
  void saveUserName(String value);
  Future<String> readUserName();
  void saveUserImage(String value);
  Future<String> readUserImage();
  void savePlace(Placemark value);
  Future<Placemark> readPlace();
  void saveLocationPermission(bool alreadySeeIt);
  Future<bool> readLocationPermission();
  Future<void> saveUserEmail({required String userEmail});
  Future<String> getUserEmail();
}
