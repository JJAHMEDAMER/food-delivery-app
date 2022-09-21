import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text.dart';
import 'package:food_delivery_app/widgets/back_cart_icons.dart';
import 'package:food_delivery_app/widgets/icon_text_widget.dart';
import 'package:food_delivery_app/widgets/paragraph.dart';
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
      backgroundColor: Colors.white,
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
            top: Dimensions.foodPageImgSize - 20,
            bottom: 100,
            left: 0,
            right: 0,
            child: Container(
              //height: 420,
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

                  // 5th Row - Paragraph
                  // Avoid Text Overflow by making Text Scrollable

                  Expanded(
                    child: SingleChildScrollView(
                        child: Paragraph(
                            text:
                                'Simply put, biryani is a spiced mix of meat and rice, traditionally cooked over an open fire in a leather pot. It is combined in different ways with a variety of components to create a number of highly tasty and unique flavor combinations. The word “biryani” itself comes from the word “birian,” a Persian term which translates to “fried before cooking.” Indeed, the roots of this dish have been traced by notable historians to modern day Persia, with appearances in notes under various names as early as 2 CE. The biryani recipe was then much simplified in order to keep it viable during travel.Once the dish reached India, it blossomed into something entirely new. The story goes that Mumtaz Mahal, a Queen of Shah Jahan, visited an army barrack and found the soldiers there to be heavily undernourished. She demanded the barrack’s cook provide the soldiers with a dish that was nutritious and had all the meat, rice, and spices needed to restore their energy. According to legend, this is how the dish first came to India. As various regions across Southern Asia adopted the recipe, it grew and changed to express cultures’ values; leading to the diverse selection of biryani dishes that exist today.')),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(Dimensions.height30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.rad40),
                        topRight: Radius.circular(Dimensions.rad40)),
                    color: AppColors.buttonBackaroundcolor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: Dimensions.height15,
                        right: Dimensions.height15,
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.rad20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.remove,
                            color: AppColors.textColor,
                            size: Dimensions.icon24,
                          ),
                          SizedBox(width: Dimensions.width15),
                          AppText(text: '0'),
                          SizedBox(width: Dimensions.width15),
                          Icon(
                            Icons.add,
                            color: AppColors.textColor,
                            size: Dimensions.icon24,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: Dimensions.height15,
                        right: Dimensions.height15,
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.rad20),
                        color: AppColors.mainColor,
                      ),
                      child: AppText(
                        text: '\$0.08 Add to cart',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
