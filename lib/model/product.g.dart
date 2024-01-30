// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      idProduct: json['id_product'] as String?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      showPrice: json['show_price'] as String?,
      imageLink: json['image_link'] as String?,
      oldPrice: json['old_price'] as String?,
    )..idProductAttribute = json['idProductAttribute'] as String?;

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id_product': instance.idProduct,
      'name': instance.name,
      'price': instance.price,
      'show_price': instance.showPrice,
      'idProductAttribute': instance.idProductAttribute,
      'image_link': instance.imageLink,
      'old_price': instance.oldPrice,
    };
