// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsModelImpl _$$ProductsModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductsModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num?)?.toInt(),
      category: json['category'] as String?,
      image: json['image'] as String?,
      color: json['color'] as String?,
      popular: json['popular'] as bool?,
    );

Map<String, dynamic> _$$ProductsModelImplToJson(_$ProductsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'category': instance.category,
      'image': instance.image,
      'color': instance.color,
      'popular': instance.popular,
    };
