import 'package:app1/cart/models/ItemModel.dart';
import 'package:app1/cart/services/sqlService.dart';
import 'package:app1/cart/services/storageService.dart';
import 'package:http/http.dart' as http;

class ItemServices {
  SQLService sqlService = SQLService();
  StorageService storageService = StorageService();
  List<ProductModel> shoppingList = [];

  @override
  List<ProductModel> getShoppingItems() {
    data.forEach((element) {
      shoppingList.add(ProductModel.fromJson(element));
    });
    return shoppingList;
  }

  List<ProductModel> get items => getShoppingItems();

  Future openDB() async {
    return await sqlService.openDB();
  }

  loadItems() async {
    bool isFirst = await isFirstTime();

    if (isFirst) {
      List items = await getLocalDBRecord();
      return items;
    } else {
      // Kaydet ve yükle
      List items = await saveToLocalDB();
      return items;
    }
  }

  Future<bool> isFirstTime() async {
    return await storageService.getItem("isFirstTime") == 'true';
  }

  Future saveToLocalDB() async {
    List<ProductModel> items = this.items;
    for (var i = 0; i < items.length; i++) {
      await sqlService.saveRecord(items[i]);
    }
    storageService.setItem("isFirstTime", "true");
    return await getLocalDBRecord();
  }

  Future getLocalDBRecord() async {
    return await sqlService.getItemsRecord();
  }

  Future addToCart(ProductModel data) async {
    return await sqlService.addToCart(data);
  }

  Future getCartList() async {
    return await sqlService.getCartList();
  }

  Future removeFromCart(int shopId) async {
    return await sqlService.removeFromCart(shopId);
  }

  Future deleteDB() async {
    return await sqlService.deleteDB();
  }
}
