import 'package:bloc/bloc.dart';
import 'package:clot/features/profile/data/models/favorites_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_bloc.freezed.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final Box<FavoritesModel> box;
  WishlistBloc(this.box) : super(const WishlistState(favorites: [])) {
    on<LoadFavorites>((event, emit) {
      final favs = box.values.map((e) => e.productId).toList();
      emit(state.copyWith(favorites: favs));
    });
    on<ToggleFavorite>((event, emit) async {
      final exists =
          box.values.any((item) => item.productId == event.productId);
      if (exists) {
        final key = box.keys
            .firstWhere((k) => box.get(k)!.productId == event.productId);
        await box.delete(key);
      } else {
        await box.add(FavoritesModel(productId: event.productId));
      }
      final favs = box.values.map((e) => e.productId).toList();
      emit(state.copyWith(favorites: favs));
    });
  }
}
