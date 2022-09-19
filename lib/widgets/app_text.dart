import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppText extends StatelessWidget {
  // Declaring Variables
  final Color color; // color is a data type Color
  final String text;
  double size;
  double height;
  TextOverflow overflow; //
  AppText({
    super.key,
    this.color = const Color(0xFF332d2b), // main black color in colors.dart
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 12,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1, // max number of lines 
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        fontWeight: FontWeight.w400,
        height: height, // line height for paragraphs
      ),
    );
  }
}

class AppTextSmall extends StatelessWidget {
  final String text;
  final Color color;
  final TextOverflow overflow;
  final double size;
  final double height;

  AppTextSmall({
    super.key,
    required this.text,
    this.color = const Color(0xFFccc7c5), // text color in file colors.dart
    this.overflow = TextOverflow.ellipsis,
    this.size = 8,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        fontWeight: FontWeight.w400,
        height: height, // line height for paragraphs
      ),
    );
  }
}
