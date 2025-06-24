part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
   const factory WishlistEvent.loadFavorites() = LoadFavorites;
  const factory WishlistEvent.toggleFavorite(ProductsModel product) = ToggleFavorite;
}