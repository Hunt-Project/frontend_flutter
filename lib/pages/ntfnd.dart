import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/arrbtn.dart';
import 'package:hunt_frontend/components/screen.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class NTFNDScreen extends StatelessWidget {
  const NTFNDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen(
          hasBackButton: false,
          text: 'OOops...!',
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
                    text: "Qualcosa è andato storto",
                    txtType: TXTTYPES.err0,
                    ),
                  ),
              ArrBtn(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                text: "Torna alla Home",
              ),
            ],
          ))),
    );
  }
}
