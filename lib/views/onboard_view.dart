import 'package:flutter/material.dart';
import 'package:fyp/utils/images.dart';
import 'package:fyp/widgets/onboard_widget.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            PageView(
              onPageChanged: (int page) {
                setState(() {
                  currentIndex = page;
                });
              },
              controller: _pageController,
              children: <Widget>[
                PageOnboard(
                  imgg: DummyImg.on1,
                  textt: "Find Trusted Doctors",
                  subtitle:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                ),
                PageOnboard(
                  imgg: DummyImg.on2,
                  textt: "Choose Best Doctors",
                  subtitle:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                ),
                PageOnboard(
                  imgg: DummyImg.on4,
                  textt: "Easy Appointments",
                  subtitle:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: const Color(0xff68609c),
          borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
