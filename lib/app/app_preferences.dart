import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../presentations/resources/language_manager.dart';
import '../presentations/resources/theme_manager.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  String PREFS_KEY_LANG = 'PREFS_KEY_LANG';
  String PREFS_KEY_TOKEN = 'PREFS_KEY_TOKEN';
  String PREFS_KEY_THEME = 'PREFS_KEY_THEME';
  String PREFS_KEY_TODOS = 'MY_TODOS_LIST';

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> setAppLanguage({required String lang}) async {
    String currentLanguage = await getAppLanguage();
    if (lang == currentLanguage) {
    } else {
      _sharedPreferences.setString(PREFS_KEY_LANG, lang);
    }
  }

  Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  Future<void> setUserToken(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN) ?? '';
  }

//Save todos
  Future<void> saveTodosList(List<TodoModel> todos) async {
    List<String> jsonData =
        todos.map((todo) => jsonEncode(todo.toJson())).toList();
    await _sharedPreferences.setStringList(PREFS_KEY_TODOS, jsonData);
  }

  Future<List<TodoModel>> getTodosList() async {
    List<String> jsonData =
        _sharedPreferences.getStringList(PREFS_KEY_TODOS) ?? [];
    List<TodoModel> todos =
        jsonData.map((data) => TodoModel.fromJson(jsonDecode(data))).toList();
    return todos;
  }

  ThemeData getTheme() {
    String? theme = _sharedPreferences.getString(PREFS_KEY_THEME);
    if (theme == ThemeDataType.dark.toString()) {
      return darkTheme();
    } else {
      return lightTheme();
    }
  }

  setTheme({required ThemeData themeData}) {
    _sharedPreferences.setString(PREFS_KEY_THEME, themeData.getValue());
  }
}
