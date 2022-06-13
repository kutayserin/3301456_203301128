import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../models/ItemModel.dart';
import '../services/itemService.dart';

class HomePageController extends GetxController {
  ItemServices itemServices = ItemServices();
  List<ProductModel> items = [];
  List<ProductModel> cartItems = [];
  bool isLoading = true;
  late Database db;

  @override
  void onInit() {
    super.onInit();
    loadDB();
  }

  void dispose() {
    db.close;
    super.dispose();
  }

  Future<void> _close(Database db) async {
    await db.close();
  }

  loadDB() async {
    await itemServices.openDB();
    loadItems();
    getCardList();
  }

  getItem(int id) {
    return items.singleWhere((element) => element.id == id);
  }

  bool isAlreadyInCart(id) {
    return cartItems.indexWhere((element) => element.shopId == id) > -1;
  }

  getCardList() async {
    try {
      List list = await itemServices.getCartList();
      cartItems.clear();
      list.forEach((element) {
        cartItems.add(ProductModel.fromJson(element));
      });
      update();
    } catch (e) {
      print(e);
    }
  }

  loadItems() async {
    try {
      isLoading = true;
      update();

      List list = await itemServices.loadItems();
      list.forEach((element) {
        items.add(ProductModel.fromJson(element));
      });

      isLoading = false;
      update();
    } catch (e) {
      print(e);
    }
  }

  addToCart(ProductModel item) async {
    isLoading = true;
    update();
    var result = await itemServices.addToCart(item);
    isLoading = false;
    update();
    return result;
  }

  removeFromCart(int shopId) async {
    itemServices.removeFromCart(shopId);
    int index = cartItems.indexWhere((element) => element.shopId == shopId);
    cartItems.removeAt(index);
    update();
  }

  deleteDB() async {
    itemServices.deleteDB();
    update();
  }
}
