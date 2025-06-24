import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/home/data/models/products_model.dart';
import 'package:clot/features/product_detail/presentation/bloc/product_detail_bloc.dart';
import 'package:clot/features/profile/presentation/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:clot/features/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProductItem extends StatelessWidget {
  final ProductsModel product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(const ProductDetailRoute());
        context.read<ProductDetailBloc>().add(
              ProductDetailEvent.started(product.id),
            );
      },
      child: Container(
        width: 180,
        decoration: const BoxDecoration(
          color: AppColors.bglight2,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  height: 180,
                  imageUrl: product.image ?? '',
                  fit: BoxFit.contain,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Image.asset(
                    'assets/images/img_not_support.jpg',
                    color: Colors.grey,
                  ),
                ),
                BlocBuilder<WishlistBloc, WishlistState>(
                  builder: (context, state) {
                    final isFavorite = state.favorites.contains(product);
                    return Positioned(
                      right: 5,
                      top: 5,
                      child: InkWell(
                        onTap: () => context
                            .read<WishlistBloc>()
                            .add(WishlistEvent.toggleFavorite(product)),
                        child: SvgPicture.asset(
                            isFavorite
                                ? AppIcons.icUnfavorite
                                : AppIcons.icUnfavorite,
                            colorFilter: isFavorite
                                ? const ColorFilter.mode(
                                    AppColors.primary100,
                                    BlendMode.srcIn,
                                  )
                                : null),
                      ),
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          maxLines: 1,
                          style: AppTextStyles.s12w400,
                        ),
                      ),
                    ],
                  ),
                  8.height,
                  Text(
                    '\$${product.price}',
                    style: AppTextStyles.s12w700,
                  ),
                  8.height,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
