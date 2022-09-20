import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';

import 'app_text.dart';

class IconTextWidget extends StatelessWidget {
  final String text;
  final String distance;
  final String time;

  IconTextWidget({
    super.key,
    required this.text,
    required this.distance,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Type - Normal... e.t.c
          Row(
            children: [
              Icon(
                Icons.circle,
                color: AppColors.iconcolor1,
                size: 20,
              ),
              SizedBox(width: 2),
              AppTextSmall(text: text),
            ],
          ),

          // Location
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: AppColors.mainColor,
                size: 20,
              ),
              SizedBox(width: 2),
              AppTextSmall(text: distance),
            ],
          ),

          //Time
          Row(
            children: [
              Icon(
                Icons.access_time_filled_rounded,
                color: AppColors.iconColor2,
                size: 20,
              ),
              SizedBox(width: 2),
              AppTextSmall(text: time),
            ],
          ),
        ],
      ),
    );
  }
}
