import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fyp/utils/images.dart';

class Uitemplate extends StatelessWidget {
  const Uitemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          DummyImg.bg,
          color: const Color(0xff68609c).withOpacity(0.4),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 130),
          child: Stack(children: [
            Image.asset(
              DummyImg.bg,
              width: 100,
              color: const Color(0xff68609c).withOpacity(0.4),
            ),
          ]),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Stack(children: [
            RotationTransition(
              turns: const AlwaysStoppedAnimation(180 / 360),
              child: Image.asset(
                DummyImg.bg,
                color: const Color(0xff68609c).withOpacity(0.6),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Stack(children: [
              RotationTransition(
                turns: const AlwaysStoppedAnimation(180 / 360),
                child: Image.asset(
                  DummyImg.bg,
                  width: 170,
                  color: const Color(0xff68609c).withOpacity(0.6),
                ),
              ),
            ]),
          ),
        ),
        Positioned.fill(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            color: Colors.transparent,
          ),
        )),
      ],
    );
  }
}
