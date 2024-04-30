import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String textt;

  ButtonWidget({super.key, required this.textt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.075,
      decoration: BoxDecoration(
        color: const Color(0xff68609c),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        textt,
        style: TextStyle(
            fontSize: 21.5.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500),
      )),
    );
  }
  
}
