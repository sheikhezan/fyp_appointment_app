import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fyp/views/registration_view.dart';
import 'package:fyp/widgets/button_widget.dart';
import 'package:fyp/widgets/ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
         const Uitemplate(),
          ListView(children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: Text(
                    'You can search course, apply course and find \n\t\t\t\t\t\t\t\t\t\t scholarship for abroad studies',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                  child: TextField(
                    // controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      labelText: 'Email Address',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: TextField(
                    // controller: emailcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        labelText: 'Password',
                        suffixIcon: const Icon(Icons.visibility_off)),
                  ),
                ),
                FadeInUp(
                    duration: const Duration(milliseconds: 1200),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: ButtonWidget(textt: "Login"),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 1,
                              width: MediaQuery.of(context).size.width * 1,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Container(
                                      width: 100,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 40.0, left: 30),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Forgot password",
                                        style: TextStyle(
                                            fontSize: 22.sp,
                                            color: const Color(0xff68609c),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, left: 30, right: 30),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Enter your email for the verification proccesss, we will send password change link to your email.",
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 30),
                                    child: FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 1000),
                                      child: TextField(
                                        // controller: emailcontroller,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          labelText: 'Email ',
                                        ),
                                      ),
                                    ),
                                  ),
                                  FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 1200),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 5),
                                        child: ButtonWidget(textt: "Send"),
                                      )),
                                ],
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, top: 160),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an Account?",
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
                            "Register",
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
            ),
          ])
        ],
      )),
    );
  }
}
