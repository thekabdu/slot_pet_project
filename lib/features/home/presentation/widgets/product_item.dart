import 'package:cached_network_image/cached_network_image.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final int price;
  final String image;
  const ProductItem(
      {super.key,
      required this.title,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: const BoxDecoration(
        color: AppColors.bglight2,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 180,
            child: CachedNetworkImage(
              height: 180,
              imageUrl: image,
              fit: BoxFit.contain,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => Image.asset(
                'assets/images/image_not_support.jpg',
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                8.height,
                Text(
                  '$price',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
