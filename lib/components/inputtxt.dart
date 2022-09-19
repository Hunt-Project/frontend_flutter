import 'package:flutter/material.dart';
import 'package:hunt_frontend/theme/Palette.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class InputTxt extends StatefulWidget {
  String hintText;
  var validator;
  bool isPassw = false;

  InputTxt({super.key, required this.hintText, required this.validator, this.isPassw = false});

  @override
  State<InputTxt> createState() => _InputTxtState();
}

class _InputTxtState extends State<InputTxt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          right: 40.0,
        ),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                cursorColor: palette[CN.primary],
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: palette[CN.primary]!,
                      width: 2.4,
                    ),
                  ),
                  hintText: widget.hintText,
                  hintStyle: typesStyles[TXTTYPES.thin0],
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: palette[CN.primary]!,
                    ),
                  ),
                ),
                validator: widget.validator,
                obscureText: widget.isPassw,
                enableSuggestions: !widget.isPassw,
                autocorrect: !widget.isPassw,
              ),
            ],
          ),
        ));
  }
}
