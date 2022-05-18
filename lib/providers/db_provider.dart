import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:app1/model/product_model.dart';
import 'dart:core';

class DBProvider {
  static final DBProvider db = DBProvider._init();

  static Database? _database;

  DBProvider._init();

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDB('product_manager.db');
    return _database;
  }

  Future<Database?> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute(
        "CREATE TABLE Product(id INTEGER PRIMARY KEY,title TEXT,image TEXT,brand TEXT,price INTEGER,description TEXT,ekranboyutu TEXT,garanti TEXT,hafiza TEXT,kamera TEXT, pil TEXT,ram TEXT, ekrankarti TEXT, islemci TEXT, piksel TEXT, cozunurluk TEXT, uydualici TEXT, ekranformati TEXT, ekranebati TEXT )");
  }

  //Insert product on database
  createProduct(Product newProduct) async {
    await deleteAllProducts();
    final db = await database;
    final res = await db!.insert('Product', newProduct.toJson());

    return res;
  }

  Future<int> deleteAllProducts() async {
    final db = await database;
    final res = await db!.rawDelete('DELETE FROM PRODUCT');

    return res;
  }

  Future<List<Product>> getAllProducts() async {
    final db = await database;
    final res = await db!.rawQuery("SELECT * FROM Product");

    List<Product> list =
        res.isNotEmpty ? res.map((c) => Product.fromJson(c)).toList() : [];
    return list;
  }
}
