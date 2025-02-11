import 'package:flutter/material.dart';

extension SizedBoxExtension on int {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );

  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}

extension BorderRadiusExtension on int {
  BorderRadius get r => BorderRadius.circular(toDouble());
}
