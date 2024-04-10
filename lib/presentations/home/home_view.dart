import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app/app_preferences.dart';
import '../../app/depndency_injection.dart';
import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/theme_manager.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings().defaultError),
      ),
      body: Center(
        child: ThemeSwitcher.withTheme(
          builder: (context, switcher, theme) {
            return CupertinoSwitch(
              value: theme.isDarkTheme,
              // trackColor: ColorManager.whiteSmoke,
              onChanged: (value) {
                ThemeData newTheme = theme.brightness == Brightness.light
                    ? darkTheme()
                    : lightTheme();
                switcher.changeTheme(theme: newTheme);
                instance<AppPreferences>().setTheme(themeData: newTheme);
              },
            );
          },
        ),
      ),
    );
  }
}
