import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit_api/model/allProducts.dart';
part 'products.g.dart';

@JsonSerializable()
class Products {
  Allproducts? allproducts;

  Products({this.allproducts});

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}
