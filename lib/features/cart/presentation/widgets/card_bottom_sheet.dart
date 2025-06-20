import 'package:clot/core/presentation/widgets/app_custom_button.dart';
import 'package:clot/core/theme/app_colors.dart';
import 'package:clot/core/theme/app_text_style.dart';
import 'package:clot/core/utils/exstensions.dart';
import 'package:clot/features/cart/data/models/credit_card_model.dart';
import 'package:flutter/material.dart';

class CardBottomSheet extends StatefulWidget {
  const CardBottomSheet({super.key});

  @override
  State<CardBottomSheet> createState() => _CardBottomSheetState();
}

class _CardBottomSheetState extends State<CardBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _numberController = TextEditingController();
  final _expiryController = TextEditingController();
  final _cvvController = TextEditingController();

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
              const Text('Enter Card Info', style: TextStyle(fontSize: 18)),
              TextFormField(
                controller: _numberController,
                decoration: const InputDecoration(labelText: 'Card Number'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.length < 16 ? 'Enter 16 digits' : null,
              ),
              TextFormField(
                controller: _expiryController,
                decoration: const InputDecoration(labelText: 'MM/YY'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _cvvController,
                decoration: const InputDecoration(labelText: 'CVV'),
                keyboardType: TextInputType.number,
                obscureText: true,
                validator: (value) => value!.length < 3 ? 'Invalid CVV' : null,
              ),
              16.height,
              Row(
                children: [
                  Expanded(
                    child: AppCustomButton(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pop(
                            CreditCardModel(
                              number: _numberController.text,
                              expiry: _expiryController.text,
                              cvv: _cvvController.text,
                            ),
                          );
                        }
                      },
                      margin: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      borderRadiusRadii: 100,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
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
