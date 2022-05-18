/*import 'package:app1/model/product_model.dart';
import 'package:app1/screens/home/components/laptop.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:core';
import 'package:path/path.dart';

class ProductsDatabase {
  static final ProductsDatabase instance = ProductsDatabase._init();

  static Database? _database;

  ProductsDatabase._init();

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDB('products.db');
    return _database;
  }

  Future<Database?> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {

    await db.execute("CREATE TABLE dogs(id INTEGER PRIMARY KEY,title TEXT,image TEXT,brand TEXT,price INTEGER,description TEXT,ekranboyutu TEXT,garanti TEXT,hafiza TEXT,kamera TEXT, pil TEXT,ram TEXT, ekrankarti TEXT, islemci TEXT, piksel TEXT, cozunurluk TEXT, uydualici TEXT, ekranformati TEXT, ekranebati TEXT )");
  }
  

  /* Future<Product> create(Product product) async {
    final db = await instance.database;
    final categoryId = await db?.insert(tableProducts, product.toJson());
    return product.copy(categoryId: categoryId);
  }
  */

  Future<Product?> readProduct(int categoryId) async {
    final db = await instance.database;
    final maps = await db?.query(
      tableProducts,
      columns: ProductFields.values,
      where: '${ProductFields.categoryId} = ?',
      whereArgs: [categoryId],
    );

    if (maps!.isNotEmpty) {
      return Product.fromJson(maps.first);
    } else {
      throw Exception('categoryId $categoryId not found');
    }
  }

  Future<List<Product>> readAllProducts() async {
    final db = await instance.database;
    final orderBy = 'id ASC';
    final result = await db?.query(tableProducts, orderBy: orderBy);
    return result!.map((json) => Product.fromJson(json)).toList();
  }

  Future<int?> update(Product product) async {
    final db = await instance.database;
    return db?.update(tableProducts, product.toJson(),
        where: '${ProductFields.categoryId} = ?',
        whereArgs: [product.categoryId]);
  }

  Future<int?> delete(int categoryId) async {
    final db = await instance.database;
    return db!.delete(tableProducts,
        where: '${ProductFields.categoryId} = ?', whereArgs: [categoryId]);
  }

  Future close() async {
    final db = await instance.database;

    db?.close();
  }
}*/
