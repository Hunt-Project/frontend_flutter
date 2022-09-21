import 'package:flutter/material.dart';
import 'package:hunt_frontend/pages/home.dart';
import 'package:hunt_frontend/pages/intro.dart';
import 'package:hunt_frontend/pages/login.dart';
import 'package:hunt_frontend/pages/ntfnd.dart';
import 'package:hunt_frontend/pages/register.dart';
import 'package:hunt_frontend/pages/regorlog.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<bool> firstOn() async {
  const storage = FlutterSecureStorage();
  String? value = await storage.read(key: 'firstOn');
  return value != null;
}

void main(List<String> args) {

  var firstTime = firstOn();

  runApp(
    MaterialApp(
      //*ROUTES
      routes: {
        '/': (context) => const HomeScreen(),
        '/intro': (context) => const IntroScreen(),
        '/ntfnd': (context) => const NTFNDScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
        '/rol': (context) => const ROLScreen(),
      },

      //*DEF SETTINGS
      title: 'Venatio',
      debugShowCheckedModeBanner: false,

      //*CUSTOM THEME
      theme: ThemeData(
        //*TEXT
        fontFamily: 'DM_Sans',
      ),
    ),
  );
}
