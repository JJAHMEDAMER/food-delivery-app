import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';

class MainCardCenter extends StatefulWidget {
  const MainCardCenter({super.key});

  @override
  State<MainCardCenter> createState() => _MainCardCenterState();
}

class _MainCardCenterState extends State<MainCardCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // page builder is for the scrolling
      // stack widget allows for elements to be on top of each other
      height: 320,
      color: AppColors.paraColor,
      child: PageView.builder(
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
          margin: EdgeInsets.only(left: 5, right: 5),
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? AppColors.mainColor : AppColors.mainColorDarker,
            image: DecorationImage(
              fit :BoxFit.cover,
              image: AssetImage('assets/image/food0.png'),
            ),
          )),
    ],
  );
}
