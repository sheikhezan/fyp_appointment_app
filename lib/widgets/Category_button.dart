  import 'package:flutter/material.dart';

  class CategoryButton extends StatelessWidget {
    final String categoryName;
    final double width;
    final double height;
    final Color borderColor;
    final double borderWidth;
    final double borderRadius;
    final double fontSize;
    final FontWeight fontWeight;
    final bool selected;

    const CategoryButton({
      required this.categoryName,
      required this.width,
      this.height = 40,
      this.borderColor = Colors.black87,
      this.borderWidth = 1.0,
      this.borderRadius = 30,
      this.fontSize = 20,
      this.fontWeight = FontWeight.w400,
      this.selected = false,
    });

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: GestureDetector(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(color: selected ? Colors.black : borderColor, width: borderWidth),
              color: selected ? Colors.black : Colors.transparent,
            ),
            child: Center(
              child: Text(
                categoryName,
                style: TextStyle(
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
