import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, required this.label, required this.controller});
  final String hint;
  final String label;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(label,style: AppStyles.textStyle(18, TextFontWeight.medium),),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      ),
    );
  }
}
