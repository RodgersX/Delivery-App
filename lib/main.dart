import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controllers/popular_product_controller.dart';
import './controllers/recommended_product_controller.dart';
import './helper/dependencies.dart' as dep;
import './pages/home/main_food_page.dart';
import './routes/route_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eco App',
      initialRoute: RouteHelper.initial,
      home: MainFoodPage(),
      getPages: RouteHelper.routes,
    );
  }
}
