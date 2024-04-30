import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fyp/utils/images.dart';
import 'package:fyp/views/onboard_view.dart';
import 'package:fyp/widgets/ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => const OnboardView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Uitemplate(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  DummyImg.logo,
                  width: 150.h,
                  height: 150.w,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Align(
                alignment: Alignment.center,
                child: Stack(children: [
                  Text(
                    'MedEase',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
