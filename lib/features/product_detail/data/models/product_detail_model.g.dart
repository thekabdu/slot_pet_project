// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailModelImpl _$$ProductDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      price: (json['price'] as num?)?.toInt(),
      brand: json['brand'] as String?,
      model: json['model'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      color: json['color'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      popular: json['popular'] as bool?,
    );

Map<String, dynamic> _$$ProductDetailModelImplToJson(
        _$ProductDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'brand': instance.brand,
      'model': instance.model,
      'category': instance.category,
      'description': instance.description,
      'color': instance.color,
      'discount': instance.discount,
      'popular': instance.popular,
    };
