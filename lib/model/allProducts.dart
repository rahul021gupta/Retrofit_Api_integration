import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit_api/model/product.dart';
part 'allProducts.g.dart';

@JsonSerializable()
class Allproducts {
  List<Product>? product;

  Allproducts({this.product});

  factory Allproducts.fromJson(Map<String, dynamic> json) =>
      _$AllproductsFromJson(json);
  Map<String, dynamic> toJson() => _$AllproductsToJson(this);
}
