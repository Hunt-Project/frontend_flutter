import 'package:flutter/material.dart';
import 'package:hunt_frontend/theme/Palette.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class ArrBtn extends StatefulWidget {
  String text;
  Function onPressed;
  bool isRight;
  Color color;
  var margin;
  var borderRadius;

  ArrBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.isRight = true,
    this.color = const Color.fromARGB(25, 112, 67, 0),
    this.margin = 10.0,
    this.borderRadius = 12.0,
  });

  @override
  State<ArrBtn> createState() => _ArrBtnState();
}

class _ArrBtnState extends State<ArrBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //Button margins
        margin: EdgeInsets.all(widget.margin),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(widget.color),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
            )),
          ),
          onPressed: () => {widget.onPressed()},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.isRight
                  ? Container()
                  : Icon(Icons.arrow_left,
                      color: palette[CN.primary]!),
              ThTxt(text: widget.text, txtType: TXTTYPES.regular1),
              widget.isRight
                  ? Icon(Icons.arrow_right,
                      color: palette[CN.primary]!)
                  : Container(),
            ],
          ),
        ));
  }
}
