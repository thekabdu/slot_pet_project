import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/cart/data/models/address_model.dart';
import 'package:flutter/material.dart';

class AddressBottomSheet extends StatefulWidget {
  const AddressBottomSheet({super.key});

  @override
  State<AddressBottomSheet> createState() => _AddressBottomSheetState();
}

class _AddressBottomSheetState extends State<AddressBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _streetController = TextEditingController();
  final _houseController = TextEditingController();
  final _apartmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Enter Address', style: TextStyle(fontSize: 18)),
              TextFormField(
                controller: _streetController,
                decoration: const InputDecoration(labelText: 'Street'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _houseController,
                decoration: const InputDecoration(labelText: 'House'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _apartmentController,
                decoration: const InputDecoration(labelText: 'Apartment'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              16.height,
              Row(
                children: [
                  Expanded(
                    child: AppCustomButton(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pop(
                            AddressModel(
                              street: _streetController.text,
                              house: _houseController.text,
                              apartment: _apartmentController.text,
                            ),
                          );
                        }
                      },
                      margin: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      borderRadiusRadii: 100,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Save',
                        style: AppTextStyles.s16w500
                            .copyWith(color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              ),
              16.height,
            ],
          ),
        ),
      ),
    );
  }
}
