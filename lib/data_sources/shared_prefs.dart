import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:netafim_mobile/models/auth_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/culture.dart';
import '../models/user_info.dart';

class SharedPrefs {
  static const _accessToken = 'accessToken';
  static const _refreshToken = 'refreshToken';
  static const _user = '_user';
  static const _culture = 'culture';
  static const _selectedCulture = 'selectedCulture';
  static const _textResources = 'textResources';
  static late SharedPreferences _prefs;

  static set prefs(SharedPreferences prefs) => _prefs = prefs;

  static SharedPreferences get instance => _prefs;

  static Future saveAuth(AuthResponse response) async {
    await saveAccessToken(response.accessToken);
    await saveRefreshToken(response.refreshToken);
  }

  static Future saveAccessToken(String token) async =>
      await _prefs.setString(_accessToken, token);

  static String? get accessToken => _prefs.getString(_accessToken);

  static bool get isLoggedIn => accessToken != null && accessToken != '';

  static Future saveRefreshToken(String token) async =>
      await _prefs.setString(_refreshToken, token);

  static String? get refreshToken => _prefs.getString(_refreshToken);

  static Future saveUser(UserInfo userInfo) async {
    await _prefs.setString(_user, jsonEncode(userInfo.toJson()));
  }

  static List<Culture> get cultures {
    final culturesJson = _prefs.getStringList(_culture);
    if (culturesJson == null) return [];
    return culturesJson.map((e) => Culture.fromJson(jsonDecode(e))).toList();
  }

  static Future saveCultures(List<Culture> cultures) async {
    final culturesJson = cultures.map((e) => jsonEncode(e.toJson())).toList();
    await _prefs.setStringList(_culture, culturesJson);
  }

  static Culture? get selectedCulture {
    final cultureJson = _prefs.getString(_selectedCulture);
    if (cultureJson == null) return null;
    final decodedJson = jsonDecode(cultureJson);
    return Culture.fromJson(decodedJson);
  }

  static Future saveSelectedCulture(Culture culture) async {
    await _prefs.setString(_selectedCulture, jsonEncode(culture.toJson()));
  }

  static Map<String, dynamic> get textResources {
    final resourcesJson = _prefs.getString(_textResources);
    if (resourcesJson == null) return {};
    final decodedJson = jsonDecode(resourcesJson);
    return decodedJson;
  }

  static Future saveTextResources(
      Map<String, Map<String, dynamic>> resources) async {
    await _prefs.setString(_textResources, jsonEncode(resources));
  }

  static UserInfo? get user {
    final userJson = _prefs.getString(_user);
    if (userJson == null) return null;
    print('userJson: $userJson');
    final decodedJson = jsonDecode(userJson);
    return UserInfo.fromJson(decodedJson);
  }

  static clearAccount() {
    _prefs.clear();
  }

  Future<bool> clearPrefs() async {
    _prefs.clear();
    return true;
  }

  Future<bool> setPref(key, value, {type = 'string'}) async {
    print("Setting $type pref $key to $value...");
    switch (type) {
      case 'string':
        _prefs.setString(key, value);
        break;
      case 'bool':
        _prefs.setBool(key, value);
        break;
      case 'int':
        _prefs.setInt(key, value);
        break;
      case 'list':
        List<String> ls = value;
        _prefs.setStringList(key, ls);
        break;
    }
    return true;
  }

  Future<dynamic> getPref(key, {type = 'string'}) async {
    switch (type) {
      case 'string':
        return _prefs.getString(key);
      case 'bool':
        return _prefs.getBool(key);
      case 'list':
        List<String> aList = [];
        List<String>? data = _prefs.getStringList(key);
        if (data != null) {
          aList = data;
          return aList;
        } else {
          return aList;
        }
    }
  }
}
