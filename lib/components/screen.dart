import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:hunt_frontend/theme/Palette.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class Screen extends StatefulWidget {
  var child;
  String text;
  bool hasBackButton;

  Screen({
    super.key,
    required this.text,
    required this.child,
    this.hasBackButton = true,
  });

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final String logoPath = 'assets/logo/logo.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: palette[CN.background],
      body: Stack(
        children: [
          widget.hasBackButton
              ? Container(
                  margin: const EdgeInsets.only(top: 124.0),
                  child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            palette[CN.primary]!),
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                        splashFactory: NoSplash.splashFactory,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back)),
                )
              : Container(),
          Padding(
              padding: EdgeInsets.only(
                top: 126.0,
                left: widget.hasBackButton ? 50.0 : 40.0,
                right: widget.hasBackButton ? 50.0 : 40.0,
                bottom: 20.0,
              ),
              child: ThTxt(
                text: widget.text,
                txtType: TXTTYPES.title0,
              )),
          widget.child,
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 50.0,
                  ),
                  child: SvgPicture.asset(
                    logoPath,
                    semanticsLabel: 'logo',
                    height: 30,
                  )))
        ],
      ),
    );
  }
}
