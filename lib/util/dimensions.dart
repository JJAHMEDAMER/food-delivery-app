import 'package:get/get.dart';

// Get Package is used for routing but can access the screen Dimensions
class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screewidth = Get.context!.width;
  // iphone 12 height = 844, width = 399

  //Box Size For Sized Box
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.75;

  //Box Size For Sized Box
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;

  // Font Size
  static double font10 = screenHeight / 84.4;
  static double font12 = screenHeight / 70.33;
  static double font15 = screenHeight / 56.27;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
  static double font30 = screenHeight / 28.13;

  // Radius For Rounded corners
  static double rad10 = screenHeight / 84.4;
  static double rad15 = screenHeight / 56.27;
  static double rad20 = screenHeight / 42.2;
  static double rad30 = screenHeight / 28.13;
  static double rad40 = screenHeight / 21.1;

  // Icon Size
  static double icon15 = screenHeight / 56.27; // The default icon size is 24
  static double icon16 = screenHeight / 52.75;
  static double icon24 = screenHeight / 35.17; // The default icon size is 24

  //Main Card
  static double mainCardContainer = screenHeight / 2.64;
  static double mainCardCentersize = screenHeight / 3.84;
  static double mainCardTextsize = screenHeight / 7.03;

  // Card List
  // Use width because the width has less variation between phones
  // And since the list is scrollable the height isn't an issue the user can always scroll
  static double listImage = screenHeight / 7.67;
  static double listText = screenHeight / 9.37;

  //static double listImage = screewidth/3.25;
  //static double listText = screewidth/3.9;

  //Food Page
  static double foodPageImgSize = screenHeight / 2.41;
}
