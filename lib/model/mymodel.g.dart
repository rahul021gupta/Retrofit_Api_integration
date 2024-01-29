// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mymodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyModel _$MyModelFromJson(Map<String, dynamic> json) => MyModel(
      isCustomerActive: json['isCustomerActive'] as String?,
      products: json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
      moduleBlockwishlist: json['moduleBlockwishlist'] as String?,
      cacheEtag: json['cacheEtag'] as String?,
    );

Map<String, dynamic> _$MyModelToJson(MyModel instance) => <String, dynamic>{
      'isCustomerActive': instance.isCustomerActive,
      'products': instance.products,
      'moduleBlockwishlist': instance.moduleBlockwishlist,
      'cacheEtag': instance.cacheEtag,
    };

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      allproducts: json['allproducts'] == null
          ? null
          : Allproducts.fromJson(json['allproducts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'pagination': instance.pagination,
      'allproducts': instance.allproducts,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      totalproducts: json['totalproducts'] as String?,
      perpage: json['perpage'] as String?,
      showingproducts: json['showingproducts'] as String?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'totalproducts': instance.totalproducts,
      'perpage': instance.perpage,
      'showingproducts': instance.showingproducts,
    };

Allproducts _$AllproductsFromJson(Map<String, dynamic> json) => Allproducts(
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllproductsToJson(Allproducts instance) =>
    <String, dynamic>{
      'product': instance.product,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      idProduct: json['idProduct'] as String?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      quantity: json['quantity'] as String?,
      showPrice: json['showPrice'] as String?,
      idProductAttribute: json['idProductAttribute'] as String?,
      imageLink: json['imageLink'] as String?,
      reductionAmount: json['reductionAmount'] as String?,
      oldPrice: json['oldPrice'] as String?,
      displayAddtocart: json['displayAddtocart'] as String?,
      addedInWishlist: json['addedInWishlist'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'idProduct': instance.idProduct,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'showPrice': instance.showPrice,
      'idProductAttribute': instance.idProductAttribute,
      'imageLink': instance.imageLink,
      'reductionAmount': instance.reductionAmount,
      'oldPrice': instance.oldPrice,
      'displayAddtocart': instance.displayAddtocart,
      'addedInWishlist': instance.addedInWishlist,
    };
