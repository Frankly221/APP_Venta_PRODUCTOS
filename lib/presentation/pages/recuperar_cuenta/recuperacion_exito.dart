import 'package:app_movil_market/presentation/pages/iniciar_sesion/login.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/bottom_large.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecuperacionExitosa extends StatelessWidget {
  const RecuperacionExitosa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[2],
      body: Padding(
        padding: EdgeInsets.only(
          left: 5.w,
          right: 5.w,
          top: 4.h,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 14.h,
          ),
          Image.asset(
            'assets/imagenes/login/exito_verde.png',
            width: 60.w,
            height: 30.h,
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: 100.w,
            height: 6.h,
            child: Text(
              'Cree una nueva contraseña. Asegúrese de que sea diferente del anterior por seguridad',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Quattrocento',
                fontSize: 16.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.w,
              right: 5.w,
              top: 4.h,
            ),
            child: Container(
              width: 100.w,
              height: 8.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: BotonLargo(
                nameTexto: 'Confirmar',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                colorFont: Colors.black,
                colorText: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
