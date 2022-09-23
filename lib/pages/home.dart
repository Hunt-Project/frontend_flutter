import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen(
          hasBackButton: false,
          hasSettingsButton: true,
          text: 'Home',
          child: Center(child: _getContent(context)),
      ),
    );
  }

  Widget _getContent(BuildContext context){
    return Container();
    //TODO: a backend request to get the next game starting date
    //TODO: handle the case in which the game is already started
    //TODO: handle the case in which the next game is going to start
    //TODO: handle the case in which the next game is programmed
    //TODO: handle the case in which there are no games programmed
  }
}
