import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class ImageHorizontalSliderWidget extends StatelessWidget {
  const ImageHorizontalSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (context, index) => Image.asset(
          'assets/images/img_rectangle.png',
          width: 160,
          height: 250,
          fit: BoxFit.cover,
        ),
        separatorBuilder: (context, index) => 8.width,
      ),
    );
  }
}
