import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/screen.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen(
        hasBackButton: true,
        text: 'Settings',
        child: Center(
            child: ThTxt(
                text: 'Qui andranno le impostazioni',
                txtType: TXTTYPES.regular0)),
      ),
    );
  }
}
