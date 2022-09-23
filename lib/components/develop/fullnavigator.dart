import 'package:flutter/material.dart';

class FLNavigator extends StatelessWidget {
  const FLNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.only(
              bottom: 100.0,
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text('go to the Home')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/intro');
                  },
                  child: const Text('go to Intro')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ntfnd');
                  },
                  child: const Text('go to NTFND')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: const Text('go to Register')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/rol');
                  },
                  child: const Text('go to ROL')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/confmail');
                  },
                  child: const Text('go to confmail')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/regdone');
                  },
                  child: const Text('go to regdone')),
            ])));
  }
}
