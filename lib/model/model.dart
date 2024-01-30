import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit_api/model/products.dart';
part 'model.g.dart';

@JsonSerializable()
class MyModel {
  Products? products;

  MyModel({
    this.products,
  });

  factory MyModel.fromJson(Map<String, dynamic> json) =>
      _$MyModelFromJson(json);
  Map<String, dynamic> toJson() => _$MyModelToJson(this);
}
