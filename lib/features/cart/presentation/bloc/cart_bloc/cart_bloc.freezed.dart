// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int id) incrementItem,
    required TResult Function(int id) decrementItem,
    required TResult Function(int id) removeItem,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int id)? incrementItem,
    TResult? Function(int id)? decrementItem,
    TResult? Function(int id)? removeItem,
    TResult? Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int id)? incrementItem,
    TResult Function(int id)? decrementItem,
    TResult Function(int id)? removeItem,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(IncrementItem value) incrementItem,
    required TResult Function(DecrementItem value) decrementItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(IncrementItem value)? incrementItem,
    TResult? Function(DecrementItem value)? decrementItem,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(IncrementItem value)? incrementItem,
    TResult Function(DecrementItem value)? decrementItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCartImplCopyWith<$Res> {
  factory _$$LoadCartImplCopyWith(
          _$LoadCartImpl value, $Res Function(_$LoadCartImpl) then) =
      __$$LoadCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadCartImpl>
    implements _$$LoadCartImplCopyWith<$Res> {
  __$$LoadCartImplCopyWithImpl(
      _$LoadCartImpl _value, $Res Function(_$LoadCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCartImpl with DiagnosticableTreeMixin implements LoadCart {
  const _$LoadCartImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.loadCart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.loadCart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int id) incrementItem,
    required TResult Function(int id) decrementItem,
    required TResult Function(int id) removeItem,
    required TResult Function() clearCart,
  }) {
    return loadCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int id)? incrementItem,
    TResult? Function(int id)? decrementItem,
    TResult? Function(int id)? removeItem,
    TResult? Function()? clearCart,
  }) {
    return loadCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int id)? incrementItem,
    TResult Function(int id)? decrementItem,
    TResult Function(int id)? removeItem,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(IncrementItem value) incrementItem,
    required TResult Function(DecrementItem value) decrementItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return loadCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(IncrementItem value)? incrementItem,
    TResult? Function(DecrementItem value)? decrementItem,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return loadCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(IncrementItem value)? incrementItem,
    TResult Function(DecrementItem value)? decrementItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart(this);
    }
    return orElse();
  }
}

abstract class LoadCart implements CartEvent {
  const factory LoadCart() = _$LoadCartImpl;
}

/// @nodoc
abstract class _$$IncrementItemImplCopyWith<$Res> {
  factory _$$IncrementItemImplCopyWith(
          _$IncrementItemImpl value, $Res Function(_$IncrementItemImpl) then) =
      __$$IncrementItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$IncrementItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$IncrementItemImpl>
    implements _$$IncrementItemImplCopyWith<$Res> {
  __$$IncrementItemImplCopyWithImpl(
      _$IncrementItemImpl _value, $Res Function(_$IncrementItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$IncrementItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncrementItemImpl
    with DiagnosticableTreeMixin
    implements IncrementItem {
  const _$IncrementItemImpl(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.incrementItem(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.incrementItem'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementItemImplCopyWith<_$IncrementItemImpl> get copyWith =>
      __$$IncrementItemImplCopyWithImpl<_$IncrementItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int id) incrementItem,
    required TResult Function(int id) decrementItem,
    required TResult Function(int id) removeItem,
    required TResult Function() clearCart,
  }) {
    return incrementItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int id)? incrementItem,
    TResult? Function(int id)? decrementItem,
    TResult? Function(int id)? removeItem,
    TResult? Function()? clearCart,
  }) {
    return incrementItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int id)? incrementItem,
    TResult Function(int id)? decrementItem,
    TResult Function(int id)? removeItem,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (incrementItem != null) {
      return incrementItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(IncrementItem value) incrementItem,
    required TResult Function(DecrementItem value) decrementItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return incrementItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(IncrementItem value)? incrementItem,
    TResult? Function(DecrementItem value)? decrementItem,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return incrementItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(IncrementItem value)? incrementItem,
    TResult Function(DecrementItem value)? decrementItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (incrementItem != null) {
      return incrementItem(this);
    }
    return orElse();
  }
}

abstract class IncrementItem implements CartEvent {
  const factory IncrementItem(final int id) = _$IncrementItemImpl;

  int get id;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementItemImplCopyWith<_$IncrementItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementItemImplCopyWith<$Res> {
  factory _$$DecrementItemImplCopyWith(
          _$DecrementItemImpl value, $Res Function(_$DecrementItemImpl) then) =
      __$$DecrementItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DecrementItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DecrementItemImpl>
    implements _$$DecrementItemImplCopyWith<$Res> {
  __$$DecrementItemImplCopyWithImpl(
      _$DecrementItemImpl _value, $Res Function(_$DecrementItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DecrementItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DecrementItemImpl
    with DiagnosticableTreeMixin
    implements DecrementItem {
  const _$DecrementItemImpl(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.decrementItem(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.decrementItem'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementItemImplCopyWith<_$DecrementItemImpl> get copyWith =>
      __$$DecrementItemImplCopyWithImpl<_$DecrementItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int id) incrementItem,
    required TResult Function(int id) decrementItem,
    required TResult Function(int id) removeItem,
    required TResult Function() clearCart,
  }) {
    return decrementItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int id)? incrementItem,
    TResult? Function(int id)? decrementItem,
    TResult? Function(int id)? removeItem,
    TResult? Function()? clearCart,
  }) {
    return decrementItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int id)? incrementItem,
    TResult Function(int id)? decrementItem,
    TResult Function(int id)? removeItem,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (decrementItem != null) {
      return decrementItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(IncrementItem value) incrementItem,
    required TResult Function(DecrementItem value) decrementItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return decrementItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(IncrementItem value)? incrementItem,
    TResult? Function(DecrementItem value)? decrementItem,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return decrementItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(IncrementItem value)? incrementItem,
    TResult Function(DecrementItem value)? decrementItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (decrementItem != null) {
      return decrementItem(this);
    }
    return orElse();
  }
}

abstract class DecrementItem implements CartEvent {
  const factory DecrementItem(final int id) = _$DecrementItemImpl;

  int get id;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecrementItemImplCopyWith<_$DecrementItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveItemImpl with DiagnosticableTreeMixin implements RemoveItem {
  const _$RemoveItemImpl(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.removeItem(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.removeItem'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int id) incrementItem,
    required TResult Function(int id) decrementItem,
    required TResult Function(int id) removeItem,
    required TResult Function() clearCart,
  }) {
    return removeItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int id)? incrementItem,
    TResult? Function(int id)? decrementItem,
    TResult? Function(int id)? removeItem,
    TResult? Function()? clearCart,
  }) {
    return removeItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int id)? incrementItem,
    TResult Function(int id)? decrementItem,
    TResult Function(int id)? removeItem,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(IncrementItem value) incrementItem,
    required TResult Function(DecrementItem value) decrementItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(IncrementItem value)? incrementItem,
    TResult? Function(DecrementItem value)? decrementItem,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(IncrementItem value)? incrementItem,
    TResult Function(DecrementItem value)? decrementItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class RemoveItem implements CartEvent {
  const factory RemoveItem(final int id) = _$RemoveItemImpl;

  int get id;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCartImplCopyWith<$Res> {
  factory _$$ClearCartImplCopyWith(
          _$ClearCartImpl value, $Res Function(_$ClearCartImpl) then) =
      __$$ClearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearCartImpl>
    implements _$$ClearCartImplCopyWith<$Res> {
  __$$ClearCartImplCopyWithImpl(
      _$ClearCartImpl _value, $Res Function(_$ClearCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCartImpl with DiagnosticableTreeMixin implements ClearCart {
  const _$ClearCartImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.clearCart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.clearCart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int id) incrementItem,
    required TResult Function(int id) decrementItem,
    required TResult Function(int id) removeItem,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int id)? incrementItem,
    TResult? Function(int id)? decrementItem,
    TResult? Function(int id)? removeItem,
    TResult? Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int id)? incrementItem,
    TResult Function(int id)? decrementItem,
    TResult Function(int id)? removeItem,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(IncrementItem value) incrementItem,
    required TResult Function(DecrementItem value) decrementItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(IncrementItem value)? incrementItem,
    TResult? Function(DecrementItem value)? decrementItem,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(IncrementItem value)? incrementItem,
    TResult Function(DecrementItem value)? decrementItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartEvent {
  const factory ClearCart() = _$ClearCartImpl;
}

/// @nodoc
mixin _$CartState {
  List<ProductDetailHiveModel> get items => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<ProductDetailHiveModel> items, int totalPrice});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailHiveModel>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductDetailHiveModel> items, int totalPrice});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPrice = null,
  }) {
    return _then(_$CartStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailHiveModel>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartStateImpl with DiagnosticableTreeMixin implements _CartState {
  const _$CartStateImpl(
      {required final List<ProductDetailHiveModel> items,
      required this.totalPrice})
      : _items = items;

  final List<ProductDetailHiveModel> _items;
  @override
  List<ProductDetailHiveModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int totalPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState(items: $items, totalPrice: $totalPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('totalPrice', totalPrice));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), totalPrice);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final List<ProductDetailHiveModel> items,
      required final int totalPrice}) = _$CartStateImpl;

  @override
  List<ProductDetailHiveModel> get items;
  @override
  int get totalPrice;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
