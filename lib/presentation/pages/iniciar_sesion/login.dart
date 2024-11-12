import 'package:app_movil_market/presentation/pages/Menu/menu_principal.dart';
import 'package:app_movil_market/presentation/pages/crear_cuenta/crear_cuenta.dart';
import 'package:app_movil_market/presentation/pages/recuperar_cuenta/olvidar_contra.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/bottom_large.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/custom_form.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  SizedBox(height: 4.h),
                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 40.w,
                          height: 20.h,
                          child: Text(
                            'Inicio de\n Sesión',
                            style: TextStyle(
                                fontFamily: 'Chicle', fontSize: 30.sp),
                          ),
                        ),
                        Positioned(
                          left: 0.01.dp,
                          bottom: 0.01.dp,
                          top: 0.01.dp,
                          child: SizedBox(
                            width: 90.w,
                            height: 10.h,
                            child: Image.asset(
                              'assets/imagenes/login/gatito_negro.png',
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                      ],
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
                        hintText: 'Username',
                        keyType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.h,
                    ),
                    child: SizedBox(
                      width: 82.w,
                      height: 5.h,
                      child: const FormBuilderCustomPago(
                        name: 'password',
                        obscureText: true,
                        hintText: 'Password',
                        keyType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.w, top: 0.8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RecuperarCuenta()));
                        },
                        child: Text(
                          'Olvidaste tu contraseña?',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 13.5.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.h,
                    ),
                    child: Container(
                      width: 80.w,
                      height: 5.5.h,
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
                        nameTexto: 'Iniciar Sesión',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MenuPrincipal()));
                        },
                        colorFont: Colors.white,
                        colorText: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.w, top: 2.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CrearCuenta()));
                        },
                        child: Text(
                          'Si no tienes una cuenta, registrate aquí',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 13.5.sp,
                          ),
                        ),
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
