import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:fyp/views/registration_view.dart';
import 'package:fyp/widgets/ui.dart';
import 'package:fyp/widgets/button_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class PageOnboard extends StatefulWidget {
  String textt;
  String subtitle;
  String imgg;
  PageOnboard(
      {super.key,
      required this.textt,
      required this.subtitle,
      required this.imgg});

  @override
  State<PageOnboard> createState() => _PageOnboardState();
}

class _PageOnboardState extends State<PageOnboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Uitemplate(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.imgg,width: 270,),
            FadeInUp(
                duration: const Duration(milliseconds: 900),
                child: Center(
                  child: Text(
                    widget.textt,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1200),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      widget.subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )),
            FadeInRight(
                duration: const Duration(milliseconds: 1200),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RegisterView()));
                      },
                      child: ButtonWidget(textt: "Get Started")),
                )),
            FadeInUp(
                duration: const Duration(milliseconds: 1200),
                child: Center(
                  child: GestureDetector(
                     onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RegisterView()));
                      },
                    child: Text(
                      'Skip',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xff68609c),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
            // Center(
            //   child: Lottie.asset(
            //     'animee/puzzle.json',
            //     height: 400,
            //     repeat: true,
            //     reverse: true,
            //   ),
            // )
          ],
        ),
      ]),
    );
  }
}
