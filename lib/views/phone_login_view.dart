import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fyp/views/otp_view.dart';
import 'package:fyp/views/registration_view.dart';
import 'package:fyp/widgets/button_widget.dart';
import 'package:fyp/widgets/ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:fyp/utils/images.dart';

class PhoneView extends StatefulWidget {
  const PhoneView({super.key});

  @override
  State<PhoneView> createState() => _PhoneViewState();
}

class _PhoneViewState extends State<PhoneView> {
  TextEditingController countrycode = TextEditingController();
  @override
  void initState() {
    countrycode.text = "+92";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                    DummyImg.phone,
                    width: 270,
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: const Color(0xff68609c)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: SizedBox(
                            width: 40,
                            child: TextField(
                              controller: countrycode,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            "|",
                            style:
                                TextStyle(fontSize: 33, color: Color(0xff68609c)),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone",
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                FadeInUp(
                    duration: const Duration(milliseconds: 1200),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const OtpView()));
                          },
                          child: ButtonWidget(textt: "Send the code")),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,top: 125),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Want to register with?",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const RegisterView()));
                          },
                          child: Text(
                            "Email",
                            style: TextStyle(
                                color: const Color(0xff68609c),
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
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
