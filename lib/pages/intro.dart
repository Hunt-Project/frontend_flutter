import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunt_frontend/components/screen.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hunt_frontend/components/arrbtn.dart';
import 'package:hunt_frontend/components/carouselcomp.dart';
import 'package:hunt_frontend/theme/Palette.dart';
import 'package:hunt_frontend/theme/ThTxt.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final CarouselController _controller = CarouselController();
  int _cursor = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen(
          text: 'Introduzione',
          hasBackButton: false,
          child: Center(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            _controller
                                                .animateToPage(pageIndex);
                                            setState(() {
                                              _cursor = pageIndex;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  pageIndex > _cursor
                                                      ? palette[CN.background]
                                                      : palette[CN.primary],
                                              shape: const CircleBorder(),
                                              splashFactory:
                                                  NoSplash.splashFactory,
                                              elevation: 0.0),
                                          child: null,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  _cursor != cc.length - 1
                                      ? Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6.0),
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
                                            //*end of the tutorial
                                            finishedTutorial();
                                            Navigator.pushNamed(
                                                context, '/rol');
                                          },
                                          text: 'fatto!',
                                          isRight: true,
                                          margin: 0.0,
                                          color: Colors.transparent,
                                        ),
                                ]))))
              ],
            ),
          ))),
    );
  }
}

//*DATA for intro carousel
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

Future finishedTutorial() async {
  const storage = FlutterSecureStorage();
  await storage.write(key: 'firstOn', value: 'true');
}
