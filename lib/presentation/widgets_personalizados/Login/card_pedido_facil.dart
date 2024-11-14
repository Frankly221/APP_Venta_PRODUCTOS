import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PedidoFacil extends StatelessWidget {
  const PedidoFacil({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 17.h,
        width: 25.w,
        child: Column(
          children: [
            SizedBox(
              child: Row(
                children: [
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 15.w,
                    decoration: BoxDecoration(
                      color: coloresPersonalizados[3],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(
                              12.0), // Radio para la esquina inferior derecha
                          topRight: Radius.circular(10.0)),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text('s/ 20.50',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15.sp)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
              width: 30.w,
              child: Image.asset('assets/imagenes/menu/51.png',
                  fit: BoxFit.scaleDown),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              child: Text('Leche laive',
                  style: TextStyle(fontSize: 15.sp, fontFamily: 'Chicle')),
            ),
            Container(
              margin: EdgeInsets.only(right: 4.w),
              child:
                  Text('Botella 400 g...', style: TextStyle(fontSize: 14.sp)),
            ),
          ],
        ),
      ),
    );
  }
}
