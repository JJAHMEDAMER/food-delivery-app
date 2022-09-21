import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text.dart';
import 'package:food_delivery_app/widgets/back_cart_icons.dart';
import 'package:food_delivery_app/widgets/paragraph.dart';

class SideFood extends StatelessWidget {
  const SideFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true, // Make Item Stick
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.foodPageImgSize,
            title: BackCartIcon(
                iconLeft: Icons.clear, iconRight: Icons.shopping_cart_outlined),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food0.png',
                //width: double.maxFinite,
                fit: BoxFit.cover, // fill the width
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(
                  Dimensions.height45), // Control The Top Position after scroll
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(Dimensions.height20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.rad30),
                    topRight: Radius.circular(Dimensions.rad30),
                  ),
                ),
                child: Center(child: AppText(text: 'Chinese Side')),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width15, right: Dimensions.width15),
              child: Paragraph(
                text:
                    'Simply put, biryani is a spiced mix of meat and rice, traditionally cooked over an open fire in a leather pot. It is combined in different ways with a variety of components to create a number of highly tasty and unique flavor combinations. The word “biryani” itself comes from the word “birian,” a Persian term which translates to “fried before cooking.” Indeed, the roots of this dish have been traced by notable historians to modern day Persia, with appearances in notes under various names as early as 2 CE. The biryani recipe was then much simplified in order to keep it viable during travel.Once the dish reached India, it blossomed into something entirely new. The story goes that Mumtaz Mahal, a Queen of Shah Jahan, visited an army barrack and found the soldiers there to be heavily undernourished. She demanded the barrack’s cook provide the soldiers with a dish that was nutritious and had all the meat, rice, and spices needed to restore their energy. According to legend, this is how the dish first came to India. As various regions across Southern Asia adopted the recipe, it grew and changed to express cultures’ values; leading to the diverse selection of biryani dishes that exist today.The Components - What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices. When it comes to making biryani rice, basmati rice is typically the go-to option; however, some cooks prefer to use other grains, such as jeerakasala or seeraga samba. Regional differences are prominently shown in the types of meat used in the dish. Coastal regions of India, for example, are more likely to produce dishes such as shrimp biryani because the resource is easily available. Regions without easy sea access, on the other hand, typically create lamb biryani or chicken biryani, taking full advantage of the resources on hand to craft a delicious local variant. Each type of meat is placed in a yogurt-based marinade to absorb as much flavor as possible, and then herbs and spices are added during the cooking process to finish off this wonderfully simple yet scrumptious recipe. While the spices may vary, the best restaurants, such as Denver’s best Indian restaurant and lunch buffet, Little India, use traditional Indian spices to add a touch of authenticity.',
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min, // minimum Height needed
        children: [
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            margin: EdgeInsets.only(
                left: Dimensions.width30, right: Dimensions.width30),
            //padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  child: BackCartIcon(
                    iconLeft: Icons.remove,
                    iconRight: Icons.add,
                    iconColor: Colors.white,
                    bgColor: AppColors.mainColor,
                    size: Dimensions.height20,
                  ),
                ),
                AppText(text: '\$12.88 X 0', size: Dimensions.font26)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(Dimensions.height30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.rad40),
                    topRight: Radius.circular(Dimensions.rad40)),
                color: AppColors.buttonBackaroundcolor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Liked Button
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.rad20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                    size: Dimensions.icon24,
                  ),
                ),

                // Add To Cart Button
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
          )
        ],
      ),
    );
  }
}
