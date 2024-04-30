import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fyp/viewmodel.dart/register_viewmodel.dart';
import 'package:fyp/views/dotors_view.dart';
import 'package:fyp/views/login_view.dart';
import 'package:fyp/views/patient_view.dart';
import 'package:fyp/views/phone_login_view.dart';
import 'package:fyp/widgets/button_widget.dart';
import 'package:fyp/widgets/ui.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterViewModel registerViewModel = Get.put(RegisterViewModel());

    return SafeArea(
      child: Scaffold(
          body: ListView(children: [
        Stack(
          children: [
            const Uitemplate(),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Text(
                    'Join us to start searching',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                  child: Text(
                    'You can search course, apply course and find \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t scholarship for abroad studies',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
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
                      labelText: 'Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff68609c)),
                            ),
                            child: Obx(
                              () => RadioListTile(
                                title: Text('Patient'),
                                value: 'Patient',
                                groupValue: registerViewModel.userType!
                                    .value, // Access the value property
                                onChanged: (value) {
                                  registerViewModel.userType!.value =
                                      value as String;
                                  print('User selected Patient');
                                  // Add more actions as needed
                                },
                              ),
                            )),
                      ),
                    const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff68609c)),
                            ),
                            child: Obx(
                              () => RadioListTile(
                                title: Text('Doctor'),
                                value: 'Doctor',
                                groupValue: registerViewModel.userType!
                                    .value, // Access the value property
                                onChanged: (value) {
                                  registerViewModel.userType!.value =
                                      value as String;
                                  print('User selected Doctor');
                                  // Add more actions as needed
                                },
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                FadeInUp(
                    duration: const Duration(milliseconds: 1200),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: GestureDetector(
                          onTap: () {
                            if (registerViewModel.userType == 'Patient') {
                              // Navigate to patient registration screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PatientView()),
                              );
                            } else if (registerViewModel.userType == 'Doctor') {
                              // Navigate to doctor registration screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DoctorsView()),
                              );
                            }
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             const LoginView()));
                          },
                          child: ButtonWidget(textt: "Sign Up")),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      contWidget(FontAwesomeIcons.facebook, () {}),
                      contWidget(FontAwesomeIcons.google, () {}),
                      contWidget(FontAwesomeIcons.phone, () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const PhoneView()));
                      }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account?",
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
                                      const LoginView()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: const Color(0xff68609c),
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
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

contWidget(IconData iconn, ontapp) {
  return GestureDetector(
    onTap: ontapp,
    child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff68609c)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FaIcon(
          iconn,
          size: 30,
        ),
      ),
    ),
  );
}
