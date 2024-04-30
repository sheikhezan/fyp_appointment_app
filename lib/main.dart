import 'package:flutter/material.dart';
import 'package:fyp/views/home_view.dart';
import 'package:fyp/views/splash_view.dart';
import 'package:fyp/widgets/bottom_widget.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff68609c)),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const BottomWidget(),
      );
    });
  }
}
