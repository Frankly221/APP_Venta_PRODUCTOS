import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BotonLargo extends StatelessWidget {
  final String nameTexto;
  final VoidCallback onPressed;
  final Color colorText;
  final Color colorFont;
  const BotonLargo(
      {super.key,
      required this.nameTexto,
      required this.onPressed,
      required this.colorFont,
      required this.colorText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorFont,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          nameTexto,
          style: TextStyle(
            color: colorText,
            fontSize: 16.sp,
          ),
        ));
  }
}
