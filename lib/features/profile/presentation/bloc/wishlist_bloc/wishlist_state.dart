part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
   const factory WishlistState({
    required List<ProductsModel> favorites,
  }) = _WishlistState;
}
