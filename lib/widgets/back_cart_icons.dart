import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/dimensions.dart';

class BackCartIcon extends StatelessWidget {
  final IconData iconLeft;
  final IconData iconRight;
  final Color iconColor;
  final double size;
  final Color bgColor;

  const BackCartIcon(
      {super.key,
      required this.iconLeft,
      required this.iconRight,
      this.iconColor = Colors.black,
      this.size = 0,
      this.bgColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Avoid Alignment and padding in custom widgets
      //padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height10), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(Dimensions.height10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), // make a circle
                  color: bgColor == Colors.black
                      ? AppColors.iconColorBg
                      : bgColor),
              child: Icon(
                iconLeft,
                color:
                    iconColor == Colors.black ? AppColors.iconColor : iconColor,
                size: size == 0 ? Dimensions.icon16 : size,
              )),
          Container(
            padding: EdgeInsets.all(Dimensions.height10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: bgColor == Colors.black ? AppColors.iconColorBg : bgColor,
            ),
            child: Icon(
              iconRight,
              color:
                  iconColor == Colors.black ? AppColors.iconColor : iconColor,
              size: size == 0 ? Dimensions.icon16 : size,
            ),
          ),
        ],
      ),
    );
  }
}
