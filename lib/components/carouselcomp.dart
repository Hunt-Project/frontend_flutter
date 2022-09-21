import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunt_frontend/theme/Palette.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class CarouselComponent extends StatefulWidget {
  final bgCol;
  final double? borderWidth;
  final borderColor;
  final double? borderRadius;
  final double? height;
  final double? width;
  final Widget? child;

  const CarouselComponent({
    super.key,
    this.bgCol,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.height,
    this.width,
    this.child,
  });

  @override
  _CarouselComponentState createState() => _CarouselComponentState();
}

class _CarouselComponentState extends State<CarouselComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.bgCol ?? palette[CN.background]!,
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
        border: Border.all(
          color: widget.borderColor ?? palette[CN.primary]!,
          width: widget.borderWidth ?? 0,
        ),
      ),
      child: Center(child: widget.child),
    );
  }
}

//*DATA
final List<CarouselComponent> ccList = [
  CarouselComponent(
      bgCol: palette[CN.background]!,
      borderRadius: 12.0,
      borderWidth: 2.0,
      borderColor: palette[CN.background]!,
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          'assets/utils/intro0.svg',
          width: 70,
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: ThTxt(
              text: 'attendi il\nmomento',
              txtType: TXTTYPES.regular1,
              isCentered: true,
            )),
      ]))),
  CarouselComponent(
      bgCol: palette[CN.background]!,
      borderRadius: 12.0,
      borderWidth: 2.0,
      borderColor: palette[CN.background]!,
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          'assets/utils/intro1.svg',
          height: 70,
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: ThTxt(
              text: 'cerca e\nscannerizza',
              txtType: TXTTYPES.regular1,
              isCentered: true,
            )),
      ]))),
  CarouselComponent(
      bgCol: palette[CN.background]!,
      borderRadius: 12.0,
      borderWidth: 2.0,
      borderColor: palette[CN.background]!,
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          'assets/utils/intro2.svg',
          height: 70,
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: ThTxt(
              text: 'trova',
              txtType: TXTTYPES.regular1,
              isCentered: true,
            )),
      ]))),
  CarouselComponent(
      bgCol: palette[CN.background]!,
      borderRadius: 12.0,
      borderWidth: 2.0,
      borderColor: palette[CN.background]!,
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          'assets/utils/intro3.svg',
          height: 70,
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: ThTxt(
              text: 'vinci',
              txtType: TXTTYPES.regular1,
              isCentered: true,
            )),
      ]))),
];

final List<Widget> cc = ccList
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: item),
          ),
        ))
    .toList();
