import 'package:flutter/material.dart';
import 'package:hunt_frontend/theme/Palette.dart';

enum TXTTYPES {
  regular0,
  regular1,
  title0,
  thin0,
  thin1,
  err0,
}

var typesStyles = <TXTTYPES, TextStyle>{
  TXTTYPES.regular0: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: palette[CN.black],
  ),
  TXTTYPES.regular1: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: palette[CN.primary],
  ),
  TXTTYPES.title0: TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
    color: palette[CN.primary],
  ),
  TXTTYPES.thin0: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: palette[CN.black4],
  ),
  TXTTYPES.thin1: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: palette[CN.primary],
  ),
  TXTTYPES.err0: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: palette[CN.error],
  ),
};

class ThTxt extends StatefulWidget {
  String text;
  TXTTYPES txtType;
  bool isCentered;

  ThTxt({
    super.key,
    required this.text,
    required this.txtType,
    this.isCentered = false,
  });

  @override
  State<ThTxt> createState() => _ThTxtState();
}

class _ThTxtState extends State<ThTxt> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: typesStyles[widget.txtType],
      textAlign: widget.isCentered ? TextAlign.center : TextAlign.start,
    );
  }
}
