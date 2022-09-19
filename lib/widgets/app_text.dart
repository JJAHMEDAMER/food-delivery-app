import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppText extends StatelessWidget {
  // Declaring Variables
  final Color? color; // color is a data type Color // ? is for optional
  final String text;
  double size;
  TextOverflow overflow; //
  AppText({
    super.key,
    this.color,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
