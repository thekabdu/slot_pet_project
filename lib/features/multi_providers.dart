import 'package:clot/core/di/service_locator.dart';
import 'package:clot/features/cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:clot/features/cart/presentation/bloc/checkout_bloc/checkout_bloc.dart';
import 'package:clot/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:clot/features/home/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:clot/features/home/presentation/bloc/products_by_categories_bloc/products_by_categories_bloc.dart';
import 'package:clot/features/product_detail/presentation/bloc/product_detail_bloc.dart';
import 'package:clot/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:clot/features/profile/presentation/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviders extends StatelessWidget {
  const BlocProviders({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<ProductsBloc>()),
        BlocProvider(create: (context) => sl<CategoriesBloc>()),
        BlocProvider(create: (context) => sl<UserBloc>()),
        BlocProvider(create: (context) => sl<ProductsByCategoriesBloc>()),
        BlocProvider(create: (context) => sl<ProductDetailBloc>()),
        BlocProvider(create: (context) => sl<CartBloc>()),
        BlocProvider(create: (context) => sl<CheckoutBloc>()),
         BlocProvider(create: (context) => sl<WishlistBloc>()),

        
      ],
      child: child,
    );
  }
}
