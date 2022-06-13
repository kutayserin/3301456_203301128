import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/ItemModel.dart';

class SQLService {
  Database? db;

  Future openDB() async {
    try {
      // Get a location using getDatabasesPath
      var databasesPath = await getDatabasesPath();
      String path = context.join(databasesPath, 'mains.db');

      // open the database
      db = await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) async {
          print(db);
          this.db = db;
          //db.close();
          //print("db kapatılıyor");
          //db.delete('shopping');
          createTables();
        },
      );

      return true;
    } catch (e) {
      print("ERROR IN OPEN DATABASE $e");
      return Future.error(e);
    }
  }

  Future close() async {
    var database = await db;
    database?.close();
  }

  createTables() async {
    try {
      var qry = "CREATE TABLE IF NOT EXISTS shopping ("
          "id INTEGER PRIMARY KEY,"
          "name TEXT,"
          "image TEXT,"
          "image2 TEXT,"
          "image3 TEXT,"
          "tip TEXT,"
          "price REAL,"
          "brand TEXT,"
          "description TEXT,"
          "ram TEXT,"
          "garanti TEXT,"
          "pil TEXT,"
          "ekranboyutu TEXT,"
          "hafiza TEXT,"
          "ekranebati TEXT,"
          "piksel TEXT,"
          "cozunurluk TEXT,"
          "ekranformati TEXT,"
          "islemci TEXT,"
          "uydualici TEXT,"
          "kamera TEXT,"
          "ekrankarti TEXT)";
      print(qry);

      await db?.execute(qry);
      qry = "CREATE TABLE IF NOT EXISTS cart_list ("
          "id INTEGER PRIMARY KEY,"
          "shop_id INTEGER,"
          "name TEXT,"
          "image TEXT,"
          "image2 TEXT,"
          "image3 TEXT,"
          "price REAL,"
          "tip TEXT,"
          "brand TEXT,"
          "description TEXT,"
          "ram TEXT,"
          "garanti TEXT,"
          "pil TEXT,"
          "ekranboyutu TEXT,"
          "hafiza TEXT,"
          "ekranebati TEXT,"
          "piksel TEXT,"
          "cozunurluk TEXT,"
          "ekranformati TEXT,"
          "islemci TEXT,"
          "uydualici TEXT,"
          "kamera TEXT,"
          "ekrankarti TEXT)";
      print(qry);

      await db?.execute(qry);
    } catch (e) {
      print("ERROR IN CREATE TABLE");
      print(e);
    }
  }

  Future saveRecord(ProductModel data) async {
    await this.db?.transaction((txn) async {
      var qry =
          'INSERT INTO shopping(id, name, tip, image, image2,image3, price, brand, description, ram, ekranboyutu, hafiza, ekranebati, piksel, pil, cozunurluk, ekranformati, islemci, uydualici, kamera, ekrankarti, garanti) VALUES(${data.id},"${data.name}","${data.tip}","${data.image}","${data.image2}","${data.image3}",${data.price},"${data.brand}","${data.description}","${data.ram}","${data.ekranboyutu}","${data.hafiza}","${data.ekranebati}","${data.piksel}","${data.pil}","${data.cozunurluk}","${data.ekranformati}","${data.islemci}","${data.uydualici}","${data.kamera}","${data.ekrankarti}","${data.garanti}")';

      int id1 = await txn.rawInsert(qry);
      print(qry);
      return id1;
    });
  }

  Future getItemsRecord() async {
    try {
      var list = await db?.rawQuery('SELECT * FROM shopping', []);
      print(list);
      return list ?? [];
    } catch (e) {
      return Future.error(e);
    }
  }

  Future getCartList() async {
    try {
      var list = await db?.rawQuery('SELECT * FROM cart_list', []);
      print(list);
      //close();
      return list ?? [];
    } catch (e) {
      return Future.error(e);
    }
  }

  Future addToCart(ProductModel data) async {
    await this.db?.transaction((txn) async {
      var qry =
          'INSERT INTO cart_list(shop_id, name, price, image,image2,image3,brand, tip, description, ram, ekranboyutu, hafiza, ekranebati, piksel, pil, cozunurluk, ekranformati, islemci, uydualici, kamera, ekrankarti, garanti) VALUES(${data.id}, "${data.name}",${data.price}, "${data.image}","${data.image2}","${data.image3}","${data.brand}","${data.tip}","${data.description}","${data.ram}","${data.ekranboyutu}","${data.hafiza}","${data.ekranebati}","${data.piksel}","${data.pil}","${data.cozunurluk}","${data.ekranformati}","${data.islemci}","${data.uydualici}","${data.kamera}","${data.ekrankarti}","${data.garanti}")';
      print(qry);
      int id1 = await txn.rawInsert(qry);
      return id1;
    });
  }

  Future removeFromCart(int shopId) async {
    var qry = "DELETE FROM cart_list where shop_id = ${shopId}";
    return await this.db?.rawDelete(qry);
  }

  Future deleteDB() async {
    var databasesPath = await getDatabasesPath();
    String path = context.join(databasesPath, 'main.db');
    try {
      print('deleting db');
      db = null;
      deleteDatabase(path);
    } catch (e) {
      print(e.toString());
    }

    print('db is deleted');
  }
}
