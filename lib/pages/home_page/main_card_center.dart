import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/widgets/app_text.dart';

class MainCardCenter extends StatefulWidget {
  const MainCardCenter({super.key});

  @override
  State<MainCardCenter> createState() => _MainCardCenterState();
}

class _MainCardCenterState extends State<MainCardCenter> {
  PageController showpage = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      // page builder is for the scrolling
      // stack widget allows for elements to be on top of each other
      height: 280,
      color: AppColors.paraColor,
      child: PageView.builder(
          controller: showpage, // show a part of the next card
          //note that the space between is from the margin and page view has nothing to do with the spaces
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:
                index.isEven ? AppColors.mainColor : AppColors.mainColorDarker,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/food0.png'),
            ),
          )),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 120,
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 10), // the bottom padding is for the shadow to have space 
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: 'Chinese Side',
                size: 20,
                color: AppColors.mainBlackColor,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Wrap(
                    children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,))
                  ),
                  AppTextSmall(text: '4.5'),
                  AppTextSmall(text: '1287 comments'),
                ],
              )
            ],
          ),
        ),
      )
    ],
  );
}
