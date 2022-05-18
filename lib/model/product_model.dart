// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
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
    ekranebati,
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

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        brand: json["brand"],
        price: json["price"],
        description: json["description"],
        ekranboyutu: json["ekranboyutu"] == null ? null : json["ekranboyutu"],
        garanti: json["garanti"],
        hafiza: json["hafiza"] == null ? null : json["hafiza"],
        kamera: json["kamera"] == null ? null : json["kamera"],
        pil: json["pil"] == null ? null : json["pil"],
        ram: json["ram"] == null ? null : json["ram"],
        ekrankarti: json["ekrankarti"] == null ? null : json["ekrankarti"],
        islemci: json["islemci"] == null ? null : json["islemci"],
        piksel: json["piksel"] == null ? null : json["piksel"],
        cozunurluk: json["cozunurluk"] == null ? null : json["cozunurluk"],
        uydualici: json["uydualici"] == null ? null : json["uydualici"],
        ekranformati:
            json["ekranformati"] == null ? null : json["ekranformati"],
        ekranebati: json["ekranebati"] == null ? null : json["ekranebati"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "brand": brand,
        "price": price,
        "description": description,
        "ekranboyutu": ekranboyutu == null ? null : ekranboyutu,
        "garanti": garanti,
        "hafiza": hafiza == null ? null : hafiza,
        "kamera": kamera == null ? null : kamera,
        "pil": pil == null ? null : pil,
        "ram": ram == null ? null : ram,
        "ekrankarti": ekrankarti == null ? null : ekrankarti,
        "islemci": islemci == null ? null : islemci,
        "piksel": piksel == null ? null : piksel,
        "cozunurluk": cozunurluk == null ? null : cozunurluk,
        "uydualici": uydualici == null ? null : uydualici,
        "ekranformati": ekranformati == null ? null : ekranformati,
        "ekranebati": ekranebati == null ? null : ekranebati,
      };
}
