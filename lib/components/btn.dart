import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:hunt_frontend/theme/Palette.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class Btn extends StatefulWidget {
  String text;
  Function onPressed;
  double borderRadius;
  bool hasIcon;
  IconData? iconData;
  Color? iconColor;
  double iconSize;

  bool hasSvg;
  String? svgPath;
  double? height;

  bool isBigger;

  Btn({
    super.key,
    required this.text,
    required this.onPressed,
    this.hasIcon = false,
    this.iconData,
    this.iconColor,
    this.iconSize = 24.0,
    this.hasSvg = false,
    this.svgPath,
    this.height,
    this.isBigger = false,
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
        child: Padding(
          padding: EdgeInsets.all(widget.isBigger ? 20.0 : 0.0),
          child: Column(children: [
            ThTxt(
              text: widget.text,
              txtType: TXTTYPES.regular1,
            ),
            widget.hasIcon
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 10.0,
                    ),
                    child: Icon(
                        widget.iconData,
                        color: widget.iconColor,
                        size: widget.iconSize
                      ))
                : Container(),
            widget.hasSvg
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 10.0,
                    ),
                    child: SvgPicture.asset(
                      widget.svgPath ?? '',
                      height: widget.height,
                    ))
                : Container()
          ]),
        ));
  }
}
