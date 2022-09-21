import 'package:flutter/material.dart';
import 'package:hunt_frontend/pages/home.dart';
import 'package:hunt_frontend/pages/intro.dart';
import 'package:hunt_frontend/pages/login.dart';
import 'package:hunt_frontend/pages/ntfnd.dart';
import 'package:hunt_frontend/pages/register.dart';
import 'package:hunt_frontend/pages/regorlog.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//First time on handling
Future<bool> firstOn() async {
  const storage = FlutterSecureStorage();
  String? value = await storage.read(key: 'firstOn');
  return value != null;
}

void main(List<String> args) {
  //First time on (goes to intro by default)
  bool firstTime = false;
  firstOn().then((value) {
    firstTime = value;
  });

  ErrorWidget.builder =
      (FlutterErrorDetails flutterErrorDetails) => const NTFNDScreen();

  runApp(
    MaterialApp(
      //*ROUTES
      routes: {
        //First time on handling
        '/': (context) => firstTime ? const IntroScreen() : const HomeScreen(),
        '/intro': (context) => const IntroScreen(),
        '/ntfnd': (context) => const NTFNDScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
        '/rol': (context) => const ROLScreen(),
      },

      //*DEF SETTINGS
      title: 'Hunt',
      debugShowCheckedModeBanner: false,

      //*CUSTOM THEME
      theme: ThemeData(
        //*TEXT
        fontFamily: 'DM_Sans',
      ),
    ),
  );
}
