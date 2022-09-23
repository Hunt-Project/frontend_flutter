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
        "pass"
    }
}
*/

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  //*Data handling
  String? _mail;
  String? _pass;
  String? _conf;
  String? _name;

  String? _mailHandler(value) {
    if (value == null || value.isEmpty) {
      return 'Inserisci una mail valida';
    }
    _mail = value;
    return null;
  }

  String? _passHandler(value) {
    if (value == null || value.isEmpty) {
      return 'Inserisci una password valida';
    }
    _pass = value;
    return null;
  }

  String? _confHandler(value) {
    if (value == null || value.isEmpty) {
      return 'Inserisci una password valida';
    }
    if (value != _pass) {
      return 'Le password non coincidono';
    }
    _conf = value;
    return null;
  }

  String? _nameHandler(value) {
    if (value == null || value.isEmpty) {
      return 'Non hai inserito nulla :(';
    }
    _name = value;
    return null;
  }

  //*Request handling
  void _mkRequest() {
    Networking net = Networking();
    net.register(_mail, _pass, _name);
  }

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
                      validator: (String? value) => _mailHandler(value),
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
                        validator: (String? value) => _passHandler(value),
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
                        validator: (String? value) => _confHandler(value),
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
                        validator: (String? value) => _nameHandler(value),
                        isPassw: false,
                      )),
                  ArrBtn(text: 'Registrati', onPressed: () => _mkRequest())
                ],
              ))),
    ));
  }
}
