import 'package:flutter/material.dart';

import 'package:hunt_frontend/components/screen.dart';

import '../components/CarouselSlider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screen(
            text: 'Intro', child: const Center(
              child: ManuallyControlledSlider()
            )));
  }
}
