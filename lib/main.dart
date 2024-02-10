import 'package:flutter/material.dart';
import 'package:flutter_cv/config/routes/app_routes.dart';
import 'package:flutter_cv/config/routes/generate_routes.dart';
import 'package:flutter_cv/config/setting/app_setting.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      theme: AppTheme().getTheme(),
      title: AppSetting.appName,
      onGenerateRoute: GenerateRoutes().generate,
    );
  }
}
