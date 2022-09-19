import 'package:flutter/material.dart';
import 'package:hunt_frontend/components/inputtxt.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class DescrInpTxt extends StatefulWidget {
  String text;
  String hintText;
  var validator;
  bool isPassw = false;

  DescrInpTxt({
    super.key,
    required this.text,
    required this.hintText,
    required this.validator,
    this.isPassw = false,
  });

  @override
  State<DescrInpTxt> createState() => _DescrInpTxtState();
}

class _DescrInpTxtState extends State<DescrInpTxt>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 40.0,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: 
              ThTxt(
                text:widget.text,
                txtType: TXTTYPES.regular0
              )
            ),),
        InputTxt(hintText: widget.hintText, validator: widget.validator, isPassw: widget.isPassw),
      ],
    );
  }
}
