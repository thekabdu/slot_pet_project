import 'package:cached_network_image/cached_network_image.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:flutter/material.dart';

class ImageHorizontalSliderWidget extends StatelessWidget {
  final String image;
  const ImageHorizontalSliderWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (context, index) => CachedNetworkImage(
          imageUrl: image,
          width: 160,
          height: 250,
          fit: BoxFit.contain,
        ),
        // Image.asset(
        //   'assets/images/img_rectangle.png',
        //   width: 160,
        //   height: 250,
        //   fit: BoxFit.cover,
        // ),
        separatorBuilder: (context, index) => 16.width,
      ),
    );
  }
}
