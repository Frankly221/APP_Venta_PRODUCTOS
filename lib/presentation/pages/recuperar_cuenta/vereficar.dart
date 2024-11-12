import 'package:app_movil_market/presentation/pages/recuperar_cuenta/codigo_vereficacion.dart';
import 'package:app_movil_market/presentation/pages/recuperar_cuenta/nueva_password.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Verificar extends StatelessWidget {
  const Verificar({super.key});

  @override
  Widget build(BuildContext context) {
    final codigoVerificacionKey = GlobalKey<CodigoVerificacionState>();
    double screenHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double screenWidth(BuildContext context) =>
        MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: coloresPersonalizados[2],
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight(context) * 0.08,
          bottom: screenHeight(context) * 0.02,
          left: screenWidth(context) * 0.04,
          right: screenWidth(context) * 0.04,
        ),
        child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    iconSize: 0.4.dp,
                    onPressed: () {
                      Navigator.pop(context); // Regresa a la página anterior
                    },
                  ),
                ),
                SizedBox(
                  height: 6.h,
                  child: Text(
                    'Verificar',
                    style: TextStyle(fontFamily: 'Chicle', fontSize: 25.sp),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  height: 4.h,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Introduzca el código de 5 digitos enviado',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0.sp,
                          ))),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 20.h,
                  child: CodigoVerificacion(), // Asocia el GlobalKey aquí
                ),
                SizedBox(
                  height: 1.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NuevoPassword()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(screenWidth(context), screenWidth(context) * 0.12),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Verificar',
                    style: TextStyle(color: Colors.white, fontSize: 16.0.sp),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
