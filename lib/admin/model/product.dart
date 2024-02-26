
class Product{

  String? name;
  String? id;
  double? price;
  String? image;
  String? brand;
  String? description;
  String? category;
  String? offer;

  Product({this.id, this.name, this.price, this.image, this.brand, this.description, this.category, this.offer});

  Map<String, dynamic> toJson(){
    return {
      "id":id,
      "name":name,
      'price': price,
      'image': image,
      'brand': brand,
      'description': description,
      'category': category,
      'offer': offer,};
  }

  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
      id:json["id"],
      name: json["name"],
      price: json['price']?.toDouble(),
      image: json['image'],
      brand: json['brand'],
      description: json['description'],
      category: json['category'],
      offer: json['offer'],);
  }
}

