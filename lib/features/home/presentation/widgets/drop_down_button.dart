import 'package:clot/core/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  @override
  Widget build(BuildContext context) {
    String selectedSex = 'Male';
    return CustomDropdown2<String>(
      label: '',
      value: selectedSex,
      items: const ['Male', 'Female'],
      onChanged: (val) => setState(() => selectedSex = val!),
    );
  }
}

class CustomDropdown2<T> extends StatelessWidget {
  final String label;
  final T value;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final Widget Function(T)? displayBuilder;

  const CustomDropdown2({
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
      height: 40,
      child: DropdownButton<T>(
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
    );
  }
}
