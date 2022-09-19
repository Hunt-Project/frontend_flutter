import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/btn.dart';
import 'package:hunt_frontend/components/screen.dart';

class ROLScreen extends StatelessWidget {
  const ROLScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screen(
            hasBackButton: false,
            text: 'Sei nuovo di qui?',
            child: Center(
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: window.physicalSize.width,
                      child: Padding(
                          padding: const EdgeInsets.only(
                            left: 40.0,
                            right: 40.0,
                            top: 20.0,
                            bottom: 20.0,
                          ),
                          child: Btn(
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },
                              text: 'Si e voglio registrarmi',
                              ))),
                  SizedBox(
                      width: window.physicalSize.width,
                      child: Padding(
                          padding: const EdgeInsets.only(
                            left: 40.0,
                            right: 40.0,
                            top: 20.0,
                            bottom: 20.0,
                          ),
                          child: Btn(
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              text: 'No, ho già un account',
                              ))),
                ],
              ),
            )));
  }
}
