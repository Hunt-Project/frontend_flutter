import 'package:flutter/material.dart';
import 'package:hunt_frontend/theme/Palette.dart';

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
