import 'package:app_movil_market/presentation/pages/recuperar_cuenta/recuperacion_exito.dart';
import 'package:app_movil_market/presentation/pages/recuperar_cuenta/vereficar.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/bottom_large.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/custom_form.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NuevoPassword extends StatelessWidget {
  const NuevoPassword({super.key});

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
                    height: 3.h,
                  ),
                  SizedBox(
                    width: 80.w,
                    height: 6.h,
                    child: Text(
                      'Establezca nueva contraseña',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Chicle', fontSize: 22.sp),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    height: 10.h,
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
                    padding: EdgeInsets.only(left: 4.w, top: 0.8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Nueva contraseña',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.5.sp,
                          fontFamily: 'Quattrocento',
                        ),
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
                        name: 'password',
                        obscureText: true,
                        hintText: 'Password',
                        keyType: TextInputType.text,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 0.8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Confirmar contraseña',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.5.sp,
                          fontFamily: 'Quattrocento',
                        ),
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
                        name: 'password',
                        obscureText: true,
                        hintText: 'Password',
                        keyType: TextInputType.text,
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
                                  builder: (context) =>
                                      const RecuperacionExitosa()));
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
