import 'package:eco_app/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/popular_product_controller.dart';
import '../../pages/home/main_food_page.dart';
import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

// ignore: must_be_immutable
class PopularFoodDetail extends StatelessWidget {
  final int pageId;
  const PopularFoodDetail({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>()
        .initProduct(product, Get.find<CartController>());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      '${AppConstants.BASE_URL}${AppConstants.UPLOAD_URL}${product.img}'),
                ),
              ),
            ),
          ),
          // icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => MainFoodPage());
                  },
                  child: AppIcon(icon: Icons.arrow_back_ios),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 30,
            child: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: product.name!),
                    SizedBox(height: Dimensions.height20),
                    BigText(text: 'Introduce'),
                    SizedBox(height: Dimensions.height20),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                          text: product.description!,
                        ),
                      ),
                    )
                  ],
                )),
          ),
          // expandable text widget
        ],
      ),
      bottomNavigationBar:
          GetBuilder<PopularProductController>(builder: (popularProduct) {
        return Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.height30,
            horizontal: Dimensions.width20,
          ),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height20,
                  horizontal: Dimensions.width20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        popularProduct.setQuantity(false);
                      },
                      child:
                          const Icon(Icons.remove, color: AppColors.signColor),
                    ),
                    SizedBox(width: Dimensions.width10 / 2),
                    BigText(text: '${popularProduct.inCartItems}'),
                    SizedBox(width: Dimensions.width10 / 2),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        popularProduct.setQuantity(true);
                      },
                      child: const Icon(Icons.add, color: AppColors.signColor),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height20,
                  horizontal: Dimensions.width20,
                ),
                child: GestureDetector(
                  onTap: () {
                    popularProduct.addItem(product);
                  },
                  child: BigText(
                    text: '\$${product.price} | Add to cart',
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
