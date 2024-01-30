// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allProducts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Allproducts _$AllproductsFromJson(Map<String, dynamic> json) => Allproducts(
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllproductsToJson(Allproducts instance) =>
    <String, dynamic>{
      'product': instance.product,
    };
