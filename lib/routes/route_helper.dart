import 'package:eco_app/pages/food/popular_food_detail.dart';
import 'package:eco_app/pages/food/recommended_food_detail.dart';
import 'package:eco_app/pages/home/main_food_page.dart';
import 'package:get/route_manager.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';

  static String getInitial() => '$initial';
  static String getPopularFood() => '$popularFood';
  static String getRecommendedFood() => '$recommendedFood';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () {
        return MainFoodPage();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: popularFood,
      page: () {
        return PopularFoodDetail();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedFood,
      page: () {
        return RecommendedFoodDetail();
      },
      transition: Transition.fadeIn,
    )
  ];
}
