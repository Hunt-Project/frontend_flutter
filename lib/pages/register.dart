import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/arrbtn.dart';
import 'package:hunt_frontend/components/descrInpTxt.dart';
import 'package:hunt_frontend/components/screen.dart';
import 'package:hunt_frontend/connection/ajax.dart';

/*
* Response

JSON OK:
{
    "result": true,
    "access_token": "3|8VxI3G7gNCUWqSDIolLnMyBF24AMbX0bfct7oEJP",
    "token_type": "Bearer"
}

JSON ERROR:
{
    "message": "The email has already been taken.",
    "errors": {
        "email": [
            "The email has already been taken."
        ],
        "pass0"
    }
}
*/

//*Data handling
String? mail;
String? pass;
String? conf;
String? name;

String? mailHandler(value) {
  if (value == null || value.isEmpty) {
    return 'Inserisci una mail valida';
  }
  mail = value;
  return null;
}

String? passHandler(value) {
  if (value == null || value.isEmpty) {
    return 'Inserisci una password valida';
  }
  pass = value;
  return null;
}

String? confHandler(value) {
  if (value == null || value.isEmpty) {
    return 'Inserisci una password valida';
  }
  conf = value;
  return null;
}

String? nameHandler(value) {
  if (value == null || value.isEmpty) {
    return 'Non hai inserito nulla :(';
  }
  name = value;
  return null;
}

//*Request handling
void mkRequest() {
  Networking net = Networking();
  net.register(mail, pass, name);
}

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
                      validator: (String? value) => mailHandler(value),
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
                        validator: (String? value) => passHandler(value),
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
                        validator: (String? value) => confHandler(value),
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
                        validator: (String? value) => nameHandler(value),
                        isPassw: false,
                      )),
                  ArrBtn(text: 'Registrati', onPressed: () => mkRequest())
                ],
              ))),
    ));
  }
}
