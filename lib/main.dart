import 'package:flutter_application_2/main_screen.dart';
import 'package:flutter_application_2/splash_screen.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: splashRoute,
      routes: <String, WidgetBuilder>{
        splashRoute: (context) => const SplashScreen(),
        loginRoute: (context) => const LoginScreen(),
        mainRoute: (context) => const MainScreen(),
      }
    );
  }


}
