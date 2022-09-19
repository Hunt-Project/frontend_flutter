import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/arrbtn.dart';
import 'package:hunt_frontend/components/descrInpTxt.dart';
import 'package:hunt_frontend/components/screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screen(
      hasBackButton: true,
      text: 'Registrati',
      child: Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 25.0,
                    ),
                    child: DescrInpTxt(
                      text: 'Inserisci la tua mail',
                      hintText: 'Scrivi qui la tua mail',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Inserisci una mail valida';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 25.0,
                        bottom: 5.0,
                      ),
                      child: DescrInpTxt(
                        text: 'Ora crea una nuova password',
                        hintText: 'Scrivi qui la password',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Inserisci una password valida';
                          }
                          return null;
                        },
                        isPassw: true,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                        bottom: 20.0,
                      ),
                      child: DescrInpTxt(
                        text: 'e confermala',
                        hintText: 'conferma qui la password',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Inserisci una password valida';
                          }
                          return null;
                        },
                        isPassw: true,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 25.0,
                        bottom: 20.0,
                      ),
                      child: DescrInpTxt(
                        text: 'Hai un soprannome?',
                        hintText: 'Scrivilo qui',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Non hai inserito nulla :(';
                          }
                          return null;
                        },
                        isPassw: true,
                      )),
                  ArrBtn(text: 'Registrati', onPressed: () {})
                ],
              ))),
    ));
  }
}
