import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/develop/fullnavigator.dart';
import 'package:hunt_frontend/components/screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen(
          hasBackButton: false,
          text: 'Home',
          child: const Center(child: FLNavigator())
      ),
    );
  }
}
