import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/app.dart';
import 'app/bloc_observer.dart';
import 'app/depndency_injection.dart';
import 'presentations/resources/language_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];
  await ScreenUtil.ensureScreenSize();
  await initAppModule();
  Bloc.observer = MyBlocObserver();
  runApp(EasyLocalization(
      supportedLocales: supportedLocales,
      path: ASSETS_PATH_LOCALISATION,
      child: const MyApp()));
}
