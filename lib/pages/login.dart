import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/arrbtn.dart';
import 'package:hunt_frontend/components/descrInpTxt.dart';
import 'package:hunt_frontend/components/screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen(
          hasBackButton: true,
          text: 'Accedi',
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(padding: const EdgeInsets.only(
                  top:20.0,
                  bottom: 25.0,
                  ), child: DescrInpTxt(
                  text: 'Inserisci la tua mail o username',
                  hintText: 'Proprio qui',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Deve essere registrato...';
                    }
                    return null;
                  },
                ),),
                Padding(padding: const EdgeInsets.only(
                  top:25.0,
                  bottom: 20.0,
                  ), child: DescrInpTxt(
                  text: 'Inserisci la tua password',
                  hintText: 'Scrivi qui la password',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Inserisci la password corretta';
                    }
                    return null;
                  },
                  isPassw: true,
                )),
                ArrBtn(text: 'Accedi', onPressed: (){})
              ],
            )
          )
      ),
    );
  }
}
