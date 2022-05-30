import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height; // 781
  static double screenWidth = Get.context!.width; // 392.7

  // 781/220
  static double pageViewContainer = screenHeight / 3.84;
  // 781/120
  static double pageViewTextContainer = screenHeight / 7.03;
  // 781/320
  static double pageView = screenHeight / 2.64;

  // 781/10 dynamic height for padding and margin
  static double height10 = screenHeight / 84.4;

  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 42.2;
  static double height45 = screenHeight / 18.75;

  // dynamic width
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 42.2;

  // font size
  static double font20 = screenHeight / 42.2;

  // radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  // icon size
  static double iconSize24 = screenHeight / 35.17;

  // list view size
  static double listViewImgSize = screenWidth / 3.27;
  static double listViewTextContSize = screenWidth / 3.92;
}
