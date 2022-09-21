import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/widgets/app_text.dart';

import 'package:food_delivery_app/util/dimensions.dart';

class reviewRow extends StatelessWidget {
  final String startNumber;
  final int commentNumber;
  
  const reviewRow({
    super.key,
    required this.startNumber,
    required this.commentNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Wrap(
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                color: AppColors.mainColor,
                size: Dimensions.icon16,
              ),
            ),
          ),
          SizedBox(width: Dimensions.width10),
          AppTextSmall(text: startNumber),
          SizedBox(width: Dimensions.width10),
          AppTextSmall(text: '$commentNumber comments'),
        ],
      ),
    );
  }
}
