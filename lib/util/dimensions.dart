import 'package:get/get.dart';

// Get Package is used for routing but can access the screen Dimensions
class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screewidth = Get.context!.width;

  //Box Size For Sized Box
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.27;
  static double height20 = screenHeight/42.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.75;


  //Box Size For Sized Box
  static double width10 = screenHeight/84.4;
  static double width15 = screenHeight/56.27;
  static double width20 = screenHeight/42.2;
  static double width30 = screenHeight/28.13;

  // Font Size
  static double font10 = screenHeight/84.4;
  static double font12 = screenHeight/70.33;
  static double font15 = screenHeight/56.27;
  static double font20 = screenHeight/42.2;

  // Radius For Rounded corners
  static double rad10 = screenHeight/84.4;
  static double rad15 = screenHeight/56.27;
  static double rad20 = screenHeight/42.2;
  static double rad30 = screenHeight/28.13;

  // Icon Size
  static double icon15 = screenHeight/56.27; // The default icon size is 24
  static double icon24 = screenHeight/35.17; // The default icon size is 24


  //Main Card 
  static double mainCardContainer = screenHeight/2.64;
  static double mainCardCentersize = screenHeight/3.84;
  static double mainCardTextsize = screenHeight/7.03;



}