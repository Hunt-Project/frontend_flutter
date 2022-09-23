import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/arrbtn.dart';
import 'package:hunt_frontend/components/screen.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class RegDoneScreen extends StatelessWidget {
  const RegDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen(
          hasBackButton: false,
          text: 'Benvenuto!',
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                    right: 60.0,
                  ),
                  child: ThTxt(
                    text: "Hai registrato il tuo account, ora sei pronto per la vera caccia",
                    txtType: TXTTYPES.regular0,
                    isCentered: true,
                    ),
                  ),
              ArrBtn(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                text: "Vai alla Home",
              ),
            ],
          ))),
    );
  }
}
