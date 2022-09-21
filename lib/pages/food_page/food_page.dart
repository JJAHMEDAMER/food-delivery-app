import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text.dart';
import 'package:food_delivery_app/widgets/back_cart_icons.dart';
import 'package:food_delivery_app/widgets/icon_text_widget.dart';
import 'package:food_delivery_app/widgets/review_row.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: Dimensions.foodPageImgSize,
              width: double.maxFinite, // max width
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/food0.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: BackCartIcon(
              iconLeft: Icons.arrow_back_ios_new_outlined,
              iconRight: Icons.shopping_cart_outlined,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 420,
              padding: EdgeInsets.only(
                  left: Dimensions.width15,
                  right: Dimensions.width15,
                  top: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.rad30),
                  topRight: Radius.circular(Dimensions.rad30),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1st Row
                  AppText(
                    text: 'Biriani',
                    size: Dimensions.font30,
                  ),

                  SizedBox(height: Dimensions.height20),
                  // 2nd Row
                  reviewRow(startNumber: '4.5', commentNumber: 1287),
                  SizedBox(height: Dimensions.height20),

                  //3rd Row
                  IconTextWidget(
                      text: 'Normal', distance: '17Km', time: '32min'),
                  SizedBox(height: Dimensions.height30),

                  // 4th Row
                  AppText(
                    text: 'Introduce',
                    size: Dimensions.font26,
                  ),
                  SizedBox(height: Dimensions.height20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
