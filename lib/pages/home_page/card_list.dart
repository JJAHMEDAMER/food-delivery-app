import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text.dart';
import 'package:food_delivery_app/widgets/icon_text_widget.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppText(text: 'Popular'),
              AppText(text: '  .  ', size: 30, color: AppColors.textColor),
              AppTextSmall(text: 'Food Pairing')
            ],
          ),
          // ListView Builder
          Container(
            height: 700,
            // List View Builder Parent show have a given height
            child: ListView.builder(
              //Disable Scroll for the list
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center, // Default Behavior but anyways
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: Dimensions.height15),
                        height: Dimensions.listImage,
                        width: Dimensions.listImage,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.rad15),
                          color: AppColors.mainColor,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image/food0.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        // Expand the Container Width 
                        child: Container(
                          padding: EdgeInsets.all(Dimensions.height10),
                          margin: EdgeInsets.only(top: Dimensions.height15), // must have matching margin with the image container to properly algin
                          height: Dimensions.listText,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.rad15),
                              bottomRight: Radius.circular(Dimensions.rad15),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(text: 'Nutritious Fruit Meal in China'),
                              //SizedBox(height: Dimensions.height10),
                              AppTextSmall(text: 'With chinese charcteristics'),
                              //SizedBox(height: Dimensions.height10),
                              IconTextWidget(
                                  text: 'Normal',
                                  distance: '17Km',
                                  time: '32min'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
