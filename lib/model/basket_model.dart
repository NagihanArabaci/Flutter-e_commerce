///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class BasketModelDataProducts {
/*
{
  "productId": 4,
  "image": "10995125452850.jpg",
  "title": "Iphone",
  "price": 27800,
  "productQuantity": 1
} 
*/

  int? productId;
  String? image;
  String? title;
  int? price;
  int? productQuantity;

  BasketModelDataProducts({
    this.productId,
    this.image,
    this.title,
    this.price,
    this.productQuantity,
  });
  BasketModelDataProducts.fromJson(Map<String, dynamic> json) {
    productId = json['productId']?.toInt();
    image = json['image']?.toString();
    title = json['title']?.toString();
    price = json['price']?.toInt();
    productQuantity = json['productQuantity']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['productId'] = productId;
    data['image'] = image;
    data['title'] = title;
    data['price'] = price;
    data['productQuantity'] = productQuantity;
    return data;
  }
}

class BasketModelData {
/*
{
  "products": [
    {
      "productId": 4,
      "image": "10995125452850.jpg",
      "title": "Iphone",
      "price": 27800,
      "productQuantity": 1
    }
  ],
  "totalPrice": 27800
} 
*/

  List<BasketModelDataProducts?>? products;
  int? totalPrice;

  BasketModelData({
    this.products,
    this.totalPrice,
  });
  BasketModelData.fromJson(Map<String, dynamic> json) {
  if (json['products'] != null) {
  final v = json['products'];
  final arr0 = <BasketModelDataProducts>[];
  v.forEach((v) {
  arr0.add(BasketModelDataProducts.fromJson(v));
  });
    products = arr0;
    }
    totalPrice = json['totalPrice']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (products != null) {
      final v = products;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data['products'] = arr0;
    }
    data['totalPrice'] = totalPrice;
    return data;
  }
}

class BasketModel {
/*
{
  "message": "Sepetteki ürünler başarıyla getirildi",
  "data": {
    "products": [
      {
        "productId": 4,
        "image": "10995125452850.jpg",
        "title": "Iphone",
        "price": 27800,
        "productQuantity": 1
      }
    ],
    "totalPrice": 27800
  },
  "status": true
} 
*/

  String? message;
  BasketModelData? data;
  bool? status;

  BasketModel({
    this.message,
    this.data,
    this.status,
  });
  BasketModel.fromJson(Map<String, dynamic> json) {
    message = json['message']?.toString();
    data = (json['data'] != null) ? BasketModelData.fromJson(json['data']) : null;
    status = json['status'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = status;
    return data;
  }
}
