// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get model =>
      throw _privateConstructorUsedError; // required Color color,
  String get category => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; // required String color,
  int? get discount => throw _privateConstructorUsedError;
  bool? get popular => throw _privateConstructorUsedError;

  /// Serializes this ProductDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailModelCopyWith<ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailModelCopyWith<$Res> {
  factory $ProductDetailModelCopyWith(
          ProductDetailModel value, $Res Function(ProductDetailModel) then) =
      _$ProductDetailModelCopyWithImpl<$Res, ProductDetailModel>;
  @useResult
  $Res call(
      {int id,
      String image,
      int price,
      String brand,
      String model,
      String category,
      String description,
      int? discount,
      bool? popular});
}

/// @nodoc
class _$ProductDetailModelCopyWithImpl<$Res, $Val extends ProductDetailModel>
    implements $ProductDetailModelCopyWith<$Res> {
  _$ProductDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? price = null,
    Object? brand = null,
    Object? model = null,
    Object? category = null,
    Object? description = null,
    Object? discount = freezed,
    Object? popular = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      popular: freezed == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailModelImplCopyWith<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  factory _$$ProductDetailModelImplCopyWith(_$ProductDetailModelImpl value,
          $Res Function(_$ProductDetailModelImpl) then) =
      __$$ProductDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image,
      int price,
      String brand,
      String model,
      String category,
      String description,
      int? discount,
      bool? popular});
}

/// @nodoc
class __$$ProductDetailModelImplCopyWithImpl<$Res>
    extends _$ProductDetailModelCopyWithImpl<$Res, _$ProductDetailModelImpl>
    implements _$$ProductDetailModelImplCopyWith<$Res> {
  __$$ProductDetailModelImplCopyWithImpl(_$ProductDetailModelImpl _value,
      $Res Function(_$ProductDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? price = null,
    Object? brand = null,
    Object? model = null,
    Object? category = null,
    Object? description = null,
    Object? discount = freezed,
    Object? popular = freezed,
  }) {
    return _then(_$ProductDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      popular: freezed == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailModelImpl implements _ProductDetailModel {
  const _$ProductDetailModelImpl(
      {required this.id,
      required this.image,
      required this.price,
      required this.brand,
      required this.model,
      required this.category,
      required this.description,
      this.discount,
      this.popular});

  factory _$ProductDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  final String image;
  @override
  final int price;
  @override
  final String brand;
  @override
  final String model;
// required Color color,
  @override
  final String category;
  @override
  final String description;
// required String color,
  @override
  final int? discount;
  @override
  final bool? popular;

  @override
  String toString() {
    return 'ProductDetailModel(id: $id, image: $image, price: $price, brand: $brand, model: $model, category: $category, description: $description, discount: $discount, popular: $popular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.popular, popular) || other.popular == popular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, price, brand, model,
      category, description, discount, popular);

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailModelImplCopyWith<_$ProductDetailModelImpl> get copyWith =>
      __$$ProductDetailModelImplCopyWithImpl<_$ProductDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailModel implements ProductDetailModel {
  const factory _ProductDetailModel(
      {required final int id,
      required final String image,
      required final int price,
      required final String brand,
      required final String model,
      required final String category,
      required final String description,
      final int? discount,
      final bool? popular}) = _$ProductDetailModelImpl;

  factory _ProductDetailModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  int get price;
  @override
  String get brand;
  @override
  String get model; // required Color color,
  @override
  String get category;
  @override
  String get description; // required String color,
  @override
  int? get discount;
  @override
  bool? get popular;

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailModelImplCopyWith<_$ProductDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
