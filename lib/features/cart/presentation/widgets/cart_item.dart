import 'package:cached_network_image/cached_network_image.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:clot/features/product_detail/data/models/product_detail_hive_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItem extends StatelessWidget {
  final int productId;

  const CartItem({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (previous, current) {
        // Ререндерим только если изменилась quantity для этого товара
        final prevItem = previous.items.firstWhere(
          (e) => e.id == productId,
          orElse: () => ProductDetailHiveModel(id: -1),
        );
        final currItem = current.items.firstWhere(
          (e) => e.id == productId,
          orElse: () => ProductDetailHiveModel(id: -1),
        );
        return prevItem.quantity != currItem.quantity;
      },
      builder: (context, state) {
        final item = state.items.firstWhere(
          (e) => e.id == productId,
          orElse: () => ProductDetailHiveModel(id: -1),
        );

        // Если товар был удалён
        if (item.id == -1) return const SizedBox.shrink();

        return Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: AppColors.bglight2,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: item.image ?? '',
                width: 64,
                fit: BoxFit.contain,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Image.asset(
                  'assets/images/img_not_support.jpg',
                  color: Colors.grey,
                ),
              ),
              8.width,
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            item.title ?? '',
                            style: AppTextStyles.s12w400,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        Text(
                          '\$${item.price ?? 0}',
                          style: AppTextStyles.s12w700,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        if (item.size != null)
                          RichText(
                            text: TextSpan(
                              text: 'Size - ',
                              style: AppTextStyles.s12w400
                                  .copyWith(color: AppColors.black50),
                              children: [
                                TextSpan(
                                  text: '${item.size}',
                                  style: AppTextStyles.s12w700
                                      .copyWith(color: AppColors.black100),
                                ),
                              ],
                            ),
                          ),
                        if (item.color != null)
                          RichText(
                            text: TextSpan(
                              text: 'Color - ',
                              style: AppTextStyles.s12w400
                                  .copyWith(color: AppColors.black50),
                              children: [
                                TextSpan(
                                  text: item.color,
                                  style: AppTextStyles.s12w700
                                      .copyWith(color: AppColors.black100),
                                ),
                              ],
                            ),
                          ),
                        const Spacer(),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                context
                                    .read<CartBloc>()
                                    .add(CartEvent.decrementItem(item.id));
                              },
                              icon: const Icon(
                                Icons.remove_circle,
                                color: AppColors.primary100,
                              ),
                            ),
                            Text(
                              '${item.quantity}',
                              style: AppTextStyles.s16w400,
                            ),
                            IconButton(
                              onPressed: () {
                                context
                                    .read<CartBloc>()
                                    .add(CartEvent.incrementItem(item.id));
                              },
                              icon: const Icon(
                                Icons.add_circle,
                                color: AppColors.primary100,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
