import 'package:eco_app/data/repository/cart_repo.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;

  CartController({required this.cartRepo});
}
