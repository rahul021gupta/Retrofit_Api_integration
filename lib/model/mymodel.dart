import 'package:json_annotation/json_annotation.dart';
part 'mymodel.g.dart';

@JsonSerializable()
class MyModel {
  String? isCustomerActive;
  Products? products;
  String? moduleBlockwishlist;
  String? cacheEtag;

  MyModel(
      {this.isCustomerActive,
      this.products,
      this.moduleBlockwishlist,
      this.cacheEtag});

  factory MyModel.fromJson(Map<String, dynamic> json) =>
      _$MyModelFromJson(json);
  Map<String, dynamic> toJson() => _$MyModelToJson(this);
}

@JsonSerializable()
class Products {
  Pagination? pagination;
  Allproducts? allproducts;

  Products({this.pagination, this.allproducts});

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}

@JsonSerializable()
class Pagination {
  String? totalproducts;
  String? perpage;
  String? showingproducts;

  Pagination({this.totalproducts, this.perpage, this.showingproducts});

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class Allproducts {
  List<Product>? product;

  Allproducts({this.product});

  factory Allproducts.fromJson(Map<String, dynamic> json) =>
      _$AllproductsFromJson(json);
  Map<String, dynamic> toJson() => _$AllproductsToJson(this);
}

@JsonSerializable()
class Product {
  String? idProduct;
  String? name;
  String? price;
  String? quantity;
  String? showPrice;
  String? idProductAttribute;
  String? imageLink;
  String? reductionAmount;
  String? oldPrice;
  String? displayAddtocart;
  String? addedInWishlist;

  Product(
      {this.idProduct,
      this.name,
      this.price,
      this.quantity,
      this.showPrice,
      this.idProductAttribute,
      this.imageLink,
      this.reductionAmount,
      this.oldPrice,
      this.displayAddtocart,
      this.addedInWishlist});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
