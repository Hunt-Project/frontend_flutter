import 'package:flutter/material.dart';
import 'package:hunt_frontend/theme/Palette.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class Btn extends StatefulWidget {
  String text;
  Function onPressed;
  double borderRadius;

  Btn({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderRadius = 12.0,
  });

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(palette[CN.primary10p]!),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          )),
        ),
        onPressed: () => {widget.onPressed()},
        child: ThTxt(
          text: widget.text,
          txtType: TXTTYPES.regular1,
        ));
  }
}
