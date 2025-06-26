import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_app_bar.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/home/presentation/widgets/product_item.dart';
import 'package:clot/features/profile/presentation/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        center: Text('Wishlist'),
      ),
      body: BlocConsumer<WishlistBloc, WishlistState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.separated(
              padding: const EdgeInsets.all(24),
              itemBuilder: (context, index) =>
                  ProductItem(product: state.favorites[index]),
              separatorBuilder: (context, index) => 8.height,
              itemCount: state.favorites.length);
        },
      ),
    );
  }
}
