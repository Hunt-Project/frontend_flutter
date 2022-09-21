import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hunt_frontend/components/arrbtn.dart';
import 'package:hunt_frontend/components/carouselcomp.dart';
import 'package:hunt_frontend/theme/Palette.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class ManuallyControlledSlider extends StatefulWidget {
  const ManuallyControlledSlider({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();
  int _cursor = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: CarouselSlider(
              items: cc,
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 9 / 10,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _cursor = index;
                    });
                  }),
              carouselController: _controller,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 40.0,
                right: 40.0,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: palette[CN.primary10p]!,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5.0,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _cursor != 0
                                ? ArrBtn(
                                    onPressed: () {
                                      if (_cursor != 0) {
                                        _controller.previousPage();
                                        setState(() {
                                          _cursor--;
                                        });
                                      }
                                    },
                                    text: 'prec',
                                    isRight: false,
                                    margin: 0.0,
                                    color: Colors.transparent,
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(
                                      left: 21.0,
                                    ),
                                    child: ThTxt(
                                      text: 'click o slide',
                                      txtType: TXTTYPES.thin1,
                                    ),
                                  ),
                            Row(children: [
                              ...Iterable<int>.generate(cc.length).map(
                                (int pageIndex) => Container(
                                  height: 12.0,
                                  width: 12.0,
                                  margin: const EdgeInsets.only(
                                      left: 4.0, right: 4.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _controller.animateToPage(pageIndex);
                                      setState(() {
                                        _cursor = pageIndex;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: pageIndex > _cursor
                                            ? palette[CN.background]
                                            : palette[CN.primary],
                                        shape: const CircleBorder(),
                                        splashFactory: NoSplash.splashFactory,
                                        elevation: 0.0),
                                    child: null,
                                  ),
                                ),
                              ),
                            ]),
                            _cursor != cc.length - 1
                                ? Padding(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: ArrBtn(
                                      onPressed: () {
                                        if (_cursor != cc.length - 1) {
                                          _controller.nextPage();
                                          setState(() {
                                            _cursor++;
                                          });
                                        }
                                      },
                                      text: 'succ',
                                      isRight: true,
                                      margin: 0.0,
                                      color: Colors.transparent,
                                    ))
                                : ArrBtn(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/rol');
                                    },
                                    text: 'fatto!',
                                    isRight: true,
                                    margin: 0.0,
                                    color: Colors.transparent,
                                  ),
                          ]))))
        ],
      ),
    ));
  }
}
