import 'package:clot/core/theme/app_icons.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/product_detail/data/models/product_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductOptionSelector extends StatefulWidget {
  final ProductDetailModel productDetailModel;
  const ProductOptionSelector({super.key, required this.productDetailModel});

  @override
  State<ProductOptionSelector> createState() => _ProductOptionSelectorState();
}

class _ProductOptionSelectorState extends State<ProductOptionSelector> {

  @override
  Widget build(BuildContext context) {
    String selectedSize = 'S';
    Color selectedColor = Colors.green.shade200;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CustomDropdown<String>(
            label: 'Size',
            value: selectedSize,
            items: const ['S', 'M', 'L'],
            onChanged: (val) => setState(() => selectedSize = val!),
          ),
          12.height,
          CustomDropdown<Color>(
            label: 'Color',
            value: selectedColor,
            items: [Colors.green.shade200, Colors.blue, Colors.black],
            onChanged: (val) => setState(() => selectedColor = val!),
            displayBuilder: (color) => Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomDropdown<T> extends StatelessWidget {
  final String label;
  final T value;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final Widget Function(T)? displayBuilder;

  const CustomDropdown({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
    this.displayBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(32),
      ),
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          DropdownButton<T>(
            value: value,
            items: items.map((T item) {
              return DropdownMenuItem<T>(
                value: item,
                child: displayBuilder != null
                    ? displayBuilder!(item)
                    : Text(item.toString()),
              );
            }).toList(),
            underline: const SizedBox.shrink(),
            icon: Container(
              margin: const EdgeInsets.only(left: 12),
              child: SvgPicture.asset(AppIcons.icArrowDown),
            ),
            onChanged: onChanged,
            dropdownColor: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ],
      ),
    );
  }
}
