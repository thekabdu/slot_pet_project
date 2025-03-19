import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class AppSearchPlaceholder extends StatelessWidget {
  final String title;

  const AppSearchPlaceholder({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(color: AppColors.white),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 36,
                  decoration: const BoxDecoration(
                    color: AppColors.bglight2,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    children: [
                      12.width,
                      Image.asset(
                        'assets/images/ic_search.png',
                        height: 16,
                        width: 16,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: AppColors.bglight2,
                          onChanged: (value) {},
                          onSubmitted: (value) => {},
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 8),
                            hintText: title,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
