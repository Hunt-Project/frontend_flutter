import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/btn.dart';
import 'package:hunt_frontend/components/screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ConfMailScreen extends StatefulWidget {
  const ConfMailScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ConfMailScreenState();
}

class _ConfMailScreenState extends State<ConfMailScreen> {
  void _launchAnotherApp({required String appLink, String? appName}) async {
    if (!await launchUrl(Uri.parse(appLink),
        mode: LaunchMode.externalApplication)) {
      throw 'Non è possibile lanciare ${appName ?? 'l\'applicazione'}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screen(
            hasBackButton: false,
            text: 'Conferma la mail per continuare',
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
                              _launchAnotherApp(
                                  appLink:
                                      'https://mail.google.com/mail/u/0/#inbox',
                                  appName: 'Gmail');
                            },
                            text: 'Guarda le mail',
                            hasSvg: true,
                            svgPath: 'assets/utils/mail.svg',
                            isBigger: true,
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
                            onPressed: () {}, //*RISPEDIRE MAIL
                            text: 'Non hai ricevuto la mail?',
                            hasSvg: false,
                            isBigger: true,
                          ))),
                ],
              ),
            )));
  }
}
