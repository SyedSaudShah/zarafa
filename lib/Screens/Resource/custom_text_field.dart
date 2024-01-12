import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.validator,
      required this.labelText,
      this.prefixIcon,
      required this.controller});
  final FormFieldValidator validator;
  final String labelText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(1),
        prefixIcon: prefixIcon,
        labelText: labelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}

class CustomTextFieldTime extends StatelessWidget {
  const CustomTextFieldTime({
    super.key,
    required this.labelText,
    this.prefixIcon,
  });

  final String labelText;

  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(1),
        prefixIcon: prefixIcon,
        labelText: labelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
