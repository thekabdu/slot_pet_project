// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) {
  return _ProductsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  bool? get popular => throw _privateConstructorUsedError;

  /// Serializes this ProductsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsModelCopyWith<ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsModelCopyWith<$Res> {
  factory $ProductsModelCopyWith(
          ProductsModel value, $Res Function(ProductsModel) then) =
      _$ProductsModelCopyWithImpl<$Res, ProductsModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int? price,
      String? category,
      String? image,
      String? color,
      bool? popular});
}

/// @nodoc
class _$ProductsModelCopyWithImpl<$Res, $Val extends ProductsModel>
    implements $ProductsModelCopyWith<$Res> {
  _$ProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? color = freezed,
    Object? popular = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      popular: freezed == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsModelImplCopyWith<$Res>
    implements $ProductsModelCopyWith<$Res> {
  factory _$$ProductsModelImplCopyWith(
          _$ProductsModelImpl value, $Res Function(_$ProductsModelImpl) then) =
      __$$ProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int? price,
      String? category,
      String? image,
      String? color,
      bool? popular});
}

/// @nodoc
class __$$ProductsModelImplCopyWithImpl<$Res>
    extends _$ProductsModelCopyWithImpl<$Res, _$ProductsModelImpl>
    implements _$$ProductsModelImplCopyWith<$Res> {
  __$$ProductsModelImplCopyWithImpl(
      _$ProductsModelImpl _value, $Res Function(_$ProductsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? color = freezed,
    Object? popular = freezed,
  }) {
    return _then(_$ProductsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      popular: freezed == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsModelImpl implements _ProductsModel {
  const _$ProductsModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      this.price,
      this.category,
      this.image,
      this.color,
      this.popular});

  factory _$ProductsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int? price;
  @override
  final String? category;
  @override
  final String? image;
  @override
  final String? color;
  @override
  final bool? popular;

  @override
  String toString() {
    return 'ProductsModel(id: $id, title: $title, description: $description, price: $price, category: $category, image: $image, color: $color, popular: $popular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.popular, popular) || other.popular == popular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, price,
      category, image, color, popular);

  /// Create a copy of ProductsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsModelImplCopyWith<_$ProductsModelImpl> get copyWith =>
      __$$ProductsModelImplCopyWithImpl<_$ProductsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsModelImplToJson(
      this,
    );
  }
}

abstract class _ProductsModel implements ProductsModel {
  const factory _ProductsModel(
      {required final int id,
      required final String title,
      required final String description,
      final int? price,
      final String? category,
      final String? image,
      final String? color,
      final bool? popular}) = _$ProductsModelImpl;

  factory _ProductsModel.fromJson(Map<String, dynamic> json) =
      _$ProductsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int? get price;
  @override
  String? get category;
  @override
  String? get image;
  @override
  String? get color;
  @override
  bool? get popular;

  /// Create a copy of ProductsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsModelImplCopyWith<_$ProductsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
