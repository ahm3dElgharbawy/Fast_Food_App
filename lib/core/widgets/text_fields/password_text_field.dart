import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField(
      {super.key,
      required this.hint,
      required this.label,
      required this.controller});
  final String hint;
  final String label;
  final TextEditingController controller;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isHidden,
      decoration: InputDecoration(
        hintText: widget.hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isHidden = !isHidden;
            });
          },
          child: Icon(
            isHidden ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(widget.label,style: TextStyles.medium18,),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Password is required";
        }
        return null;
      },
    );
  }
}
