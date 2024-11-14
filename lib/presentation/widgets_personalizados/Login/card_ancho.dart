import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardAncho extends StatelessWidget {
  const CardAncho(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.imagenURL1,
      required this.imagenURL2,
      required this.color});
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String imagenURL1;
  final String imagenURL2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 38.w,
        height: 12.h,
        child: Row(
          children: [
            SizedBox(
              width: 23.w,
              height: 12.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                        width: 13.w,
                        height: 3.h,
                        child: Image.asset(imagenURL1)),
                  ),
                  Text(text1,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(text2,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  Text(text3,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(text4,
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Image.asset(
                  imagenURL2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
