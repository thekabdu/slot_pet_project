import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({
    super.key,
    this.child,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.border,
    this.borderRadiusRadii = 0.0,
    this.color = AppColors.primary100,
    this.shapeBorder,
    this.onTap,
    this.tapTargetSize,
    this.minimumSize,
  });
  final BorderRadius? shapeBorder;

  final Widget? child;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final EdgeInsetsGeometry? margin;

  final double borderRadiusRadii;

  final Color color;

  final GestureTapCallback? onTap;

  final MaterialTapTargetSize? tapTargetSize;

  final BoxBorder? border;

  final Size? minimumSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        border: border,
        borderRadius:
            shapeBorder ?? BorderRadius.all(Radius.circular(borderRadiusRadii)),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color,
          minimumSize: minimumSize,
          tapTargetSize: tapTargetSize,
          padding: padding ?? EdgeInsets.zero,
          textStyle: AppTextStyles.s16w500,
          disabledBackgroundColor: color.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius:
                shapeBorder ?? BorderRadius.circular(borderRadiusRadii),
          ),
        ),
        child: child,
      ),
    );
  }
}
