import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: "id_product")
  String? idProduct;
  String? name;
  String? price;
  @JsonKey(name: "show_price")
  String? showPrice;
  String? idProductAttribute;
  @JsonKey(name: "image_link")
  String? imageLink;
  @JsonKey(name: "old_price")
  String? oldPrice;

  Product({
    this.idProduct,
    this.name,
    this.price,
    this.showPrice,
    this.imageLink,
    this.oldPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
