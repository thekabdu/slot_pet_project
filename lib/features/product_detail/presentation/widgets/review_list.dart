import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Reviews',
            style: AppTextStyles.s16w700,
          ),
          8.height,
          const Text(
            '4.5 Ratings (213 Reviews)',
            style: AppTextStyles.s24w700,
          ),
          16.height,
          Text(
            '213 Reviews',
            style: AppTextStyles.s12w400.copyWith(color: AppColors.black50),
          ),
          16.height,
          _ReviewItem(),
          12.height,
          _ReviewItem(),
          12.height,
          _ReviewItem(),
        ],
      ),
    );
  }
}

class _ReviewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const CircleAvatar(radius: 20),
            12.width,
            const Text('Alex Morgan', style: AppTextStyles.s12w700),
            const Spacer(),
            Expanded(
              child: Row(
                children: List.generate(
                  5,
                  (i) => Icon(Icons.star,
                      size: 16, color: i < 3 ? Colors.purple : Colors.grey),
                ),
              ),
            ),
          ],
        ),
        6.height,
        Text(
          'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
          style: AppTextStyles.s12w400.copyWith(
            color: AppColors.black50,
          ),
        ),
        6.height,
        Text(
          '12 days ago',
          style: AppTextStyles.s12w400.copyWith(
            color: AppColors.black100,
          ),
        ),
      ],
    );
  }
}
