import 'package:auto_route/auto_route.dart';
import 'package:clot/core/presentation/app_bar/custom_double_app_bar.dart';
import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/product_detail/presentation/bloc/product_detail_bloc.dart';
import 'package:clot/features/product_detail/presentation/widgets/image_horizontal_slider_widget.dart';
import 'package:clot/features/product_detail/presentation/widgets/product_description.dart';
import 'package:clot/features/product_detail/presentation/widgets/product_info_section.dart';
import 'package:clot/features/product_detail/presentation/widgets/product_option_selector.dart';
import 'package:clot/features/product_detail/presentation/widgets/quantity_selector.dart';
import 'package:clot/features/product_detail/presentation/widgets/review_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (message) => Center(child: Text(message)),
          loaded: (product) {
            return Scaffold(
              appBar: CustomDoubleAppBar(
                action: SvgPicture.asset(AppIcons.icUnfavorite),
              ),
              body: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    12.height,
                    const ImageHorizontalSliderWidget(),
                    24.height,
                    const ProductInfoSection(),
                    33.height,
                    const ProductOptionSelector(),
                    12.height,
                    const QuantitySelector(),
                    26.height,
                    ProductDescription(description: product.description),
                    24.height,
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'Shipping & Returns',
                        style: AppTextStyles.s16w700,
                      ),
                    ),
                    12.height,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'Free standard shipping and free 60-day returns',
                        style: AppTextStyles.s12w500.copyWith(
                          color: AppColors.black50,
                        ),
                      ),
                    ),
                    24.height,
                    const ReviewList(),
                    30.height,
                  ],
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Row(
                children: [
                  Expanded(
                    child: AppCustomButton(
                      color: AppColors.primary100,
                      borderRadiusRadii: 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${product.price}',
                            style: AppTextStyles.s16w700
                                .copyWith(color: AppColors.white),
                          ),
                          Text(
                            'Add to Bag',
                            style: AppTextStyles.s16w500
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
