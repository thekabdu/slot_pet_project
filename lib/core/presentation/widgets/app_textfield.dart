import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatefulWidget {
  const AppTextFieldWidget(
      {super.key,
      this.errorMessage,
      this.textStyle,
      this.controller,
      this.onSubmitted,
      this.label,
      this.keyboardType = TextInputType.text,
      this.autofocus = false});

  final String? label;
  final String? errorMessage;
  final TextStyle? textStyle;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final void Function(String value)? onSubmitted;
  final bool autofocus;

  @override
  State<AppTextFieldWidget> createState() => _AppTextFieldWidgetState();
}

class _AppTextFieldWidgetState extends State<AppTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.centerRight,
          children: [
            TextField(
              autocorrect: false,
              style: widget.textStyle ??
                  AppTextStyles.s13w500.copyWith(color: AppColors.black100),
              controller: widget.controller,
              onSubmitted: widget.onSubmitted,
              keyboardType: widget.keyboardType,
              autofocus: widget.autofocus,
              decoration: InputDecoration(
                isDense: true,
                fillColor: AppColors.bglight2,
                filled: true,
                hintStyle: AppTextStyles.s13w500.copyWith(
                  color: AppColors.black100.withOpacity(0.5),
                ),
                labelText: widget.label,
                border: InputBorder.none,
                disabledBorder: InputBorder.none,
                labelStyle: AppTextStyles.s13w500.copyWith(
                  color: AppColors.black100.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        Visibility(
          visible: widget.errorMessage?.isNotEmpty ?? false,
          child: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              _getErrorMessage(),
              textAlign: TextAlign.start,
              style: AppTextStyles.s13w500.copyWith(color: AppColors.red100),
            ),
          ),
        ),
      ],
    );
  }

  String _getErrorMessage() {
    final errorMessage = widget.errorMessage ?? 'Не верная почта';
    return errorMessage;
  }
}
