import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType keyboardType;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      style: TextStyle(
        fontFamily: "Paperlogy",
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.primary,
      ),
      decoration: InputDecoration(
        floatingLabelStyle: TextStyle(
          color: CupertinoColors.activeBlue
        ),
        labelText: hintText,
        labelStyle: TextStyle(
          color: Colors.black54,
          fontFamily: "Paperlogy",
          fontWeight: FontWeight.w500
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(200),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.54),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(200),
          borderSide: const BorderSide(
            color: CupertinoColors.activeBlue
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 25.0,
        ),
      ),
    );
  }
}
