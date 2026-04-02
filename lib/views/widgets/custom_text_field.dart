import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.autoFocused = false,
    this.suffix,
    this.readOnly = false,
    required this.controller,
    this.obSecure = false,
    this.validator
  });
  final String? hintText;
  final Widget? suffix;
  final bool autoFocused;
  final bool readOnly;
  final TextEditingController controller;
  final bool obSecure;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obSecure,
      style: TextStyle(color: Colors.white),
      readOnly: readOnly,
      controller: controller,
      autofocus: autoFocused,
      decoration: InputDecoration(
        suffixIcon: suffix,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 15,
          color: Colors.white.withValues(alpha: .4),
        ),
        focusColor: Colors.black.withValues(alpha: 1),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        fillColor: Colors.black.withValues(alpha: .4),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      validator: validator,
    );
  }
}
