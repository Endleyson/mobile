import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:is_it_safe_app/src/service/constants/key_constants.dart';
import 'package:is_it_safe_app/src/service/shared_preferences/ishared_preferences_custom.dart';
import 'package:is_it_safe_app/src/util/constants/string_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

///A classe de [SharedPreferencesCustom] é uma classe responsável por gerenciar
///e armazenar requisições de armazenamento de dados locais.
class SharedPreferencesCustom implements ISharedPreferencesCustom {
  @override
  void saveLogin(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(KeyConstants.keyUserLogged, value);
  }

  @override
  Future<bool> readLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(KeyConstants.keyUserLogged) ?? false;
  }

  @override
  void saveOnBoarding(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(KeyConstants.keyUserOnBoarding, value);
  }

  @override
  Future<bool> readOnBoarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(KeyConstants.keyUserOnBoarding) ?? false;
  }

  @override
  void saveToken(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(KeyConstants.keyUserToken, value);
  }

  @override
  Future<String> readToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(KeyConstants.keyUserToken) ?? StringConstants.empty;
  }

  @override
  void saveRefreshToken(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(KeyConstants.keyUserRefreshToken, value);
  }

  @override
  Future<String> readRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(KeyConstants.keyUserRefreshToken) ??
        StringConstants.empty;
  }

  @override
  void saveUserAuth(FormData value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(KeyConstants.keyUserAuth, value.toString());
  }

  @override
  Future<FormData> readUserAuth() async {
    final prefs = await SharedPreferences.getInstance();
    return FormData.fromMap(
      json.decode(
        prefs.getString(KeyConstants.keyUserAuth) ?? StringConstants.empty,
      ),
    );
  }
}
