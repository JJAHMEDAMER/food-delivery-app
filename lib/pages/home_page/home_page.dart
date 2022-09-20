import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page/main_card_center.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text.dart';

import 'card_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height15, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width15, right: Dimensions.width15),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: 'Egypt',
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        AppTextSmall(
                          text: 'Cairo',
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Container(
                  width: Dimensions.height45,
                  height: Dimensions.height45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.rad15),
                    color: AppColors.mainColor,
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: Dimensions.icon24,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                MainCardCenter(),
                SizedBox(height: Dimensions.height30),
                CardList()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
