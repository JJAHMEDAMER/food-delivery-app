import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/widgets/app_text.dart';
import 'package:food_delivery_app/widgets/icon_text_widget.dart';

class MainCardCenter extends StatefulWidget {
  const MainCardCenter({super.key});

  @override
  State<MainCardCenter> createState() => _MainCardCenterState();
}

class _MainCardCenterState extends State<MainCardCenter> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currentPageValue = 0.0;

  @override
  void initState(){
    super.initState();
    pageController.addListener((){
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // page builder is for the scrolling
          // stack widget allows for elements to be on top of each other
          height: 280,
          child: PageView.builder(
              controller: pageController, // show a part of the next card
              //note that the space between is from the margin and page view has nothing to do with the spaces
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        )
      ],
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 12, right: 12),
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: index.isEven
                  ? AppColors.mainColor
                  : AppColors.mainColorDarker,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image/food0.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: AppColors.shadow,
                        offset: const Offset(0, 5)),
                    // This box shadow is to color over the side shadows
                    const BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    const BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                  ]),
              height: 120,
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 10,
              ), // the bottom padding is for the shadow to have space
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: 'Chinese Side',
                    size: 20,
                    color: AppColors.mainBlackColor,
                  ),
                  //SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      AppTextSmall(text: '4.5'),
                      SizedBox(width: 10),
                      AppTextSmall(text: '1287 comments'),
                    ],
                  ),
                  //SizedBox(height: 10),
                  IconTextWidget(
                    text: 'Normal',
                    distance: '1.7Km',
                    time: '34min',
                  )
                ],
              ),
            ),
          )
        ],
      );
}
