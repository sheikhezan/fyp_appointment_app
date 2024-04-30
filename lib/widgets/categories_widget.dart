import 'package:flutter/material.dart';
import 'package:fyp/utils/images.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class Categorycont extends StatelessWidget {
  Color clr;
  String imgg;
  String textt;
  Categorycont(
      {super.key, required this.clr, required this.imgg, required this.textt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: clr,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Stack(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(DummyImg.catbg)),
              Center(
                  child: Image.asset(
                imgg,
                width: 40,
              )),
            ]),
          ),
          Text(
            textt,
            style: TextStyle(
              fontSize: 15.5.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
