import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'dart:core';

final String tableProducts = 'products';
final String tablePhones = 'phones';
final String tableLaptops = 'laptops';
final String tableTvs = 'tvs';

class ProductFields {
  static final List<String> values = [categoryId, name, subCategories];
  static final String categoryId = '_id';
  static final String name = 'name';
  static final String subCategories = 'subCategories';
}

class SubCategoryFields {
  static final List<String> values = [
    id,
    title,
    image,
    brand,
    price,
    description,
    ekranboyutu,
    garanti,
    hafiza,
    kamera,
    pil,
    ram,
    ekrankarti,
    islemci,
    piksel,
    cozunurluk,
    uydualici,
    ekranformati,
    ekranebati
  ];
  static final String id = "_id";
  static final String title = "title";
  static final String image = "image";
  static final String brand = "brand";
  static final String price = "price";
  static final String description = "description";
  static final String ekranboyutu = "ekranboyutu";
  static final String garanti = "garanti";
  static final String hafiza = "hafıza";
  static final String kamera = "kamera";
  static final String pil = "pil";
  static final String ram = "ram";
  static final String ekrankarti = "ekrankarti";
  static final String islemci = "islemci";
  static final String piksel = "piksel";
  static final String cozunurluk = "cozunurluk";
  static final String uydualici = "uydualici";
  static final String ekranformati = "ekranformati";
  static final String ekranebati = "ekranebati";
}

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.categoryId,
    required this.name,
    required this.subCategories,
  });

  int? categoryId;
  String? name;
  List<SubCategory>? subCategories;

  Product copy(
          {int? categoryId, String? name, List<SubCategory>? subCategories}) =>
      Product(
        categoryId: categoryId ?? this.categoryId,
        name: name ?? this.name,
        subCategories: subCategories ?? this.subCategories,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json[ProductFields.name],
        categoryId: json[ProductFields.categoryId],
        subCategories: json[ProductFields.subCategories] == null
            ? null
            : List<SubCategory>.from(json[ProductFields.subCategories]
                .map((x) => SubCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        ProductFields.categoryId: categoryId,
        ProductFields.name: name,
        ProductFields.subCategories: subCategories == null
            ? null
            : List<dynamic>.from(subCategories!.map((x) => x.toJson())),
      };

  String toString() {
    return '{${this.categoryId},${this.name},${this.subCategories}}';
  }
}

class SubCategory {
  SubCategory({
    required this.id,
    required this.title,
    required this.image,
    required this.brand,
    required this.price,
    required this.description,
    required this.ekranboyutu,
    required this.garanti,
    required this.hafiza,
    required this.kamera,
    required this.pil,
    required this.ram,
    required this.ekrankarti,
    required this.islemci,
    required this.piksel,
    required this.cozunurluk,
    required this.uydualici,
    required this.ekranformati,
    required this.ekranebati,
  });

  int? id;
  String? title;
  String? image;
  String? brand;
  int? price;
  String? description;
  String? ekranboyutu;
  String? garanti;
  String? hafiza;
  String? kamera;
  String? pil;
  String? ram;
  String? ekrankarti;
  String? islemci;
  String? piksel;
  String? cozunurluk;
  String? uydualici;
  String? ekranformati;
  String? ekranebati;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json[SubCategoryFields.id],
        title: json[SubCategoryFields.title],
        image: json[SubCategoryFields.image],
        brand: json[SubCategoryFields.brand],
        price: json[SubCategoryFields.price],
        description: json[SubCategoryFields.description],
        ekranboyutu: json[SubCategoryFields.ekranboyutu] == null
            ? null
            : json[SubCategoryFields.ekranboyutu],
        garanti: json[SubCategoryFields.garanti],
        hafiza: json[SubCategoryFields.hafiza] == null
            ? null
            : json[SubCategoryFields.hafiza],
        kamera: json[SubCategoryFields.kamera] == null
            ? null
            : json[SubCategoryFields.kamera],
        pil: json[SubCategoryFields.pil] == null
            ? null
            : json[SubCategoryFields.pil],
        ram: json[SubCategoryFields.ram] == null
            ? null
            : json[SubCategoryFields.ram],
        ekrankarti: json[SubCategoryFields.ekrankarti] == null
            ? null
            : json[SubCategoryFields.ekrankarti],
        islemci: json[SubCategoryFields.islemci] == null
            ? null
            : json[SubCategoryFields.islemci],
        piksel: json[SubCategoryFields.piksel] == null
            ? null
            : json[SubCategoryFields.piksel],
        cozunurluk: json[SubCategoryFields.cozunurluk] == null
            ? null
            : json[SubCategoryFields.cozunurluk],
        uydualici: json[SubCategoryFields.uydualici] == null
            ? null
            : json[SubCategoryFields.uydualici],
        ekranformati: json[SubCategoryFields.ekranformati] == null
            ? null
            : json[SubCategoryFields.ekranformati],
        ekranebati: json[SubCategoryFields.ekranebati] == null
            ? null
            : json[SubCategoryFields.ekranebati],
      );

  String toString() {
    return '{${this.id},${this.title},${this.brand},${this.price},${this.islemci}}';
  }

  Map<String, dynamic> toJson() => {
        SubCategoryFields.id: id,
        SubCategoryFields.title: title,
        SubCategoryFields.image: image,
        SubCategoryFields.brand: brand,
        SubCategoryFields.price: price,
        SubCategoryFields.description: description,
        SubCategoryFields.ekranboyutu: ekranboyutu == null ? null : ekranboyutu,
        SubCategoryFields.garanti: garanti,
        SubCategoryFields.hafiza: hafiza == null ? null : hafiza,
        SubCategoryFields.kamera: kamera == null ? null : kamera,
        SubCategoryFields.pil: pil == null ? null : pil,
        SubCategoryFields.ram: ram == null ? null : ram,
        SubCategoryFields.ekrankarti: ekrankarti == null ? null : ekrankarti,
        SubCategoryFields.islemci: islemci == null ? null : islemci,
        SubCategoryFields.piksel: piksel == null ? null : piksel,
        SubCategoryFields.cozunurluk: cozunurluk == null ? null : cozunurluk,
        SubCategoryFields.uydualici: uydualici == null ? null : uydualici,
        SubCategoryFields.ekranformati:
            ekranformati == null ? null : ekranformati,
        SubCategoryFields.ekranebati: ekranebati == null ? null : ekranebati,
      };
}



/*Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

final String tableProducts = 'products';

class ProductFields {
  static final List<String> values = [id, title, price, brand];

  static final String id = '_id';
  static final String title = 'title';
  static final String price = 'price';
  static final String brand = 'brand';
  //static final String description = 'description';
}

class Product {
  Product({
    required required required this.id,
    required required required this.title,
    required required this.price,
    required required this.brand,
  });

  int id;
  String title;
  int price;
  String brand;

  Product copy({
    int? id,
    String? title,
    int? price,
    String? brand,
  }) =>
      Product(
          id: id ?? required this.id,
          title: title ?? required this.title,
          price: price ?? required this.price,
          brand: brand ?? required this.brand);

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json[ProductFields.id],
        title: json[ProductFields.title],
        price: json[ProductFields.price],
        brand: json[ProductFields.brand],
      );

  Map<String, dynamic> toJson() => {
        ProductFields.id: id,
        ProductFields.title: title,
        ProductFields.price: price,
        ProductFields.brand: brand,
      };
}*/
