import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fyp/views/phone_login_view.dart';
import 'package:fyp/widgets/button_widget.dart';
import 'package:fyp/widgets/ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:fyp/utils/images.dart';
import 'package:pinput/pinput.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff68609c)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return SafeArea(
      child: Scaffold(
          body: ListView(
            children: [Stack(
                  children: [
            const Uitemplate(),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Image.asset(
                    DummyImg.otp,
                    width: 320,
                  ),
                ),
                Text(
                  'Phone Verification',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 27.0, vertical: 10),
                  child: Text(
                   'We need to register your phone before  \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t getting started!',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Pinput(
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInUp(
                    duration: const Duration(milliseconds: 1200),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: ButtonWidget(textt: "Verify phone number"),
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const PhoneView()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0,top: 100),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Edit Phone Number?",
                        style: TextStyle(
                            color: const Color(0xff68609c),
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            )
                  ],
                ),
          ])),
    );
  }
}
