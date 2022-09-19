import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/develop/fullnavigator.dart';

import 'package:hunt_frontend/components/carusel_steps.dart';
import 'package:hunt_frontend/components/screen.dart';

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
        text: 'Intro',
        child: const Center(
          child:
          //*FOR DEVELOPMENT
            FLNavigator(),
            
            //bottomNavigationBar: CarouselSteps(steps: 5),
          )
      )
      
      
    );
  }
}
