import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sizer/sizer.dart';

class FormBuilderCustomPago extends StatelessWidget {
  const FormBuilderCustomPago({
    super.key,
    required this.name,
    required this.obscureText,
    required this.hintText,
    this.validator,
    this.icon, // Icono opcional
    required this.keyType,
  });

  final String name;
  final bool obscureText;
  final String hintText;
  final String? Function(String?)? validator;
  final IconData? icon; // Puede ser null
  final TextInputType keyType;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: name,
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyType,
      style: TextStyle(color: Colors.black, fontSize: 14.5.sp),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.red, fontSize: 14.5.sp),
        contentPadding: EdgeInsets.only(top: 1.h, left: 1.w),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black45, width: 1),
        ),
        hintStyle: const TextStyle(color: Colors.black45),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black45, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: icon != null
            ? Icon(icon, color: Colors.black45)
            : null, // Muestra icono solo si no es null
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
