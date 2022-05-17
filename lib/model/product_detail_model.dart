///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ProductDetailModelData {
/*
{
  "id": 6,
  "image": [
    "11024024567858.jpg"
  ],
  "price": 8000,
  "title": "HTC",
  "description": "Bu bir htc model cep telefonudur"
} 
*/

  int? id;
  List<String?>? image;
  int? price;
  String? title;
  String? description;
  bool? isFavorite;

  ProductDetailModelData({
    this.id,
    this.image,
    this.price,
    this.title,
    this.description,
    this.isFavorite,
  });
  ProductDetailModelData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    if (json['image'] != null) {
      final v = json['image'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      image = arr0;
    }
    price = json['price']?.toInt();
    title = json['title']?.toString();
    description = json['description']?.toString();
    isFavorite = json['isFavorite'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    if (image != null) {
      final v = image;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['image'] = arr0;
    }
    data['price'] = price;
    data['title'] = title;
    data['description'] = description;
    data['isFavorite'] = isFavorite;
    return data;
  }
}

class ProductDetailModel {
/*
{
  "message": "Ürün detayı başarıyla getirildi",
  "status": true,
  "data": {
    "id": 6,
    "image": [
      "11024024567858.jpg"
    ],
    "price": 8000,
    "title": "HTC",
    "description": "Bu bir htc model cep telefonudur"
  }
} 
*/

  String? message;
  bool? status;
  ProductDetailModelData? data;

  ProductDetailModel({
    this.message,
    this.status,
    this.data,
  });
  ProductDetailModel.fromJson(Map<String, dynamic> json) {
    message = json['message']?.toString();
    status = json['status'];
    data = (json['data'] != null)
        ? ProductDetailModelData.fromJson(json['data'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}
