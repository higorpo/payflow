import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/modules/splash/splash_page.dart';

import 'modules/barcode_scanner/bar_code_scanner_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payflow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/barcode_scanner': (context) => BarcodeScannerPage(),
      },
    );
  }
}
