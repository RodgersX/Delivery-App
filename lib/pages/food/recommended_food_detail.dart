import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                padding: EdgeInsets.only(top: 5, bottom: 10),
                width: double.maxFinite,

                child: Center(
                  child: BigText(
                    text: 'Chinese Side',
                    size: Dimensions.font26,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.mainBlackColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food01.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: ExpandableTextWidget(
                    text:
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit accusamus velit vero quis vel autem ratione animi voluptates incidunt ipsum, quidem veritatis soluta numquam. Dolorem unde, fuga porro, voluptates asperiores consectetur quisquam ad, cum consequatur possimus deserunt nihil tempora mollitia quaerat odio quas? Harum pariatur laudantium ut voluptatum? Voluptatibus veritatis eius iste sit vel delectus quod, iusto magni numquam eaque in sed, sapiente laboriosam facere hic esse tenetur enim nemo ut earum quo, exercitationem quis asperiores rerum. Earum fugit obcaecati dolorum laboriosam nulla quod aliquid sunt, eaque, laborum labore excepturi consequuntur nemo et accusamus adipisci rem eum veniam expedita iusto.Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit accusamus velit vero quis vel autem ratione animi voluptates incidunt ipsum, quidem veritatis soluta numquam. Dolorem unde, fuga porro, voluptates asperiores consectetur quisquam ad, cum consequatur possimus deserunt nihil tempora mollitia quaerat odio quas? Harum pariatur laudantium ut voluptatum? Voluptatibus veritatis eius iste sit vel delectus quod, iusto magni numquam eaque in sed, sapiente laboriosam facere hic esse tenetur enim nemo ut earum quo, exercitationem quis asperiores rerum. Earum fugit obcaecati dolorum laboriosam nulla quod aliquid sunt, eaque, laborum labore excepturi consequuntur nemo et accusamus adipisci rem eum veniam expedita iusto.Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit accusamus velit vero quis vel autem ratione animi voluptates incidunt ipsum, quidem veritatis soluta numquam. Dolorem unde, fuga porro, voluptates asperiores consectetur quisquam ad, cum consequatur possimus deserunt nihil tempora mollitia quaerat odio quas? Harum pariatur laudantium ut voluptatum? Voluptatibus veritatis eius iste sit vel delectus quod, iusto magni numquam eaque in sed, sapiente laboriosam facere hic esse tenetur enim nemo ut earum quo, exercitationem quis asperiores rerum. Earum fugit obcaecati dolorum laboriosam nulla quod aliquid sunt, eaque, laborum labore excepturi consequuntur nemo et accusamus adipisci rem eum veniam expedita iusto.Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit accusamus velit vero quis vel autem ratione animi voluptates incidunt ipsum, quidem veritatis soluta numquam. Dolorem unde, fuga porro, voluptates asperiores consectetur quisquam ad, cum consequatur possimus deserunt nihil tempora mollitia quaerat odio quas? Harum pariatur laudantium ut voluptatum? Voluptatibus veritatis eius iste sit vel delectus quod, iusto magni numquam eaque in sed, sapiente laboriosam facere hic esse tenetur enim nemo ut earum quo, exercitationem quis asperiores rerum. Earum fugit obcaecati dolorum laboriosam nulla quod aliquid sunt, eaque, laborum labore excepturi consequuntur nemo et accusamus adipisci rem eum veniam expedita iusto.Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit accusamus velit vero quis vel autem ratione animi voluptates incidunt ipsum, quidem veritatis soluta numquam. Dolorem unde, fuga porro, voluptates asperiores consectetur quisquam ad, cum consequatur possimus deserunt nihil tempora mollitia quaerat odio quas? Harum pariatur laudantium ut voluptatum? Voluptatibus veritatis eius iste sit vel delectus quod, iusto magni numquam eaque in sed, sapiente laboriosam facere hic esse tenetur enim nemo ut earum quo, exercitationem quis asperiores rerum. Earum fugit obcaecati dolorum laboriosam nulla quod aliquid sunt, eaque, laborum labore excepturi consequuntur nemo et accusamus adipisci rem eum veniam expedita iusto.',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width20 * 2.5,
              vertical: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSIze: Dimensions.iconSize24,
                ),
                BigText(
                  text: '\$12.88' + ' ' + 'X' + ' ' + '0',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSIze: Dimensions.iconSize24,
                )
              ],
            ),
          ),
          Container(
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
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height20,
                    horizontal: Dimensions.width20,
                  ),
                  child: BigText(
                    text: '\$10 | Add to cart',
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
