import 'package:flutter/material.dart';

class CarouselSteps extends StatefulWidget {
  const CarouselSteps({
    super.key,
    this.color = const Color(0xFFFFE306),
    this.steps = 5,
  });

  final Color color;
  final num steps;

  @override
  State<CarouselSteps> createState() => _CarouselState();
}

class _CarouselState extends State<CarouselSteps> {
  double _step = 1;

  void next() {
    setState(() {
      _step += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(color: Colors.red),
        padding: const EdgeInsets.only(bottom: 50, right: 20, left: 20),
        height: 50,
        child: Row(
          children: <Widget>[
            Expanded(
                child: TextButton(
              onPressed: () {},
              child: Text("Skip"),
            )),
            Expanded(
              child: Row(
                children: [
                  for (var i = 0; i < widget.steps; i++) Icon(Icons.ac_unit)
                ],
              ),
            ),
            Expanded(child: TextButton(onPressed: next, child: Text("Succ")))
          ],
        ));
  }
}
