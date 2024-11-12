import 'package:app_movil_market/presentation/pages/recuperar_cuenta/vereficar.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/bottom_large.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/custom_form.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecuperarCuenta extends StatelessWidget {
  const RecuperarCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[2],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 5.0.w,
            right: 5.0.w,
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    width: 80.w,
                    height: 6.h,
                    child: Text(
                      'Olvidaste',
                      style: TextStyle(fontFamily: 'Chicle', fontSize: 25.sp),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                    height: 10.h,
                    child: Text(
                      'tu contraseña',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Chicle',
                        fontSize: 25.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                    height: 10.h,
                    child: Text(
                      'Ingrese su email para restablecer la contraseña',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Quattrocento',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.h,
                      bottom: 2.h,
                    ),
                    child: SizedBox(
                      width: 82.w,
                      height: 5.h,
                      child: const FormBuilderCustomPago(
                        name: 'username',
                        obscureText: false,
                        hintText: 'Correo',
                        keyType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.h,
                    ),
                    child: Container(
                      width: 80.w,
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
                        nameTexto: 'Restablecer contraseña',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Verificar()));
                        },
                        colorFont: Colors.black,
                        colorText: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
