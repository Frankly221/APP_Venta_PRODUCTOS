import 'package:app_movil_market/presentation/pages/iniciar_sesion/login.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/bottom_large.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/custom_form.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CrearCuenta extends StatelessWidget {
  const CrearCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[2],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 5.h,
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
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          iconSize: 0.4.dp,
                          onPressed: () {
                            Navigator.pop(
                                context); // Regresa a la página anterior
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.w),
                        child: Text(
                          'Crear Cuenta',
                          style:
                              TextStyle(fontFamily: 'Chicle', fontSize: 24.sp),
                        ),
                      ),
                      SizedBox(
                        width: 0.01.w,
                      )
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 0.8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Crea un usuario',
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
                        name: 'username',
                        obscureText: false,
                        hintText: 'Username',
                        keyType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 0.8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Crea una contraseña',
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
                      top: 0.5.h,
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
                    padding: EdgeInsets.only(left: 4.w, top: 0.8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Dirección de e-mail',
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
                      top: 0.5.h,
                    ),
                    child: SizedBox(
                      width: 82.w,
                      height: 5.h,
                      child: const FormBuilderCustomPago(
                        name: 'password',
                        obscureText: false,
                        hintText: 'Correo',
                        keyType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 35.w,
                          height: 10.h,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 0.5.h),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Ingrese su DNI',
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
                                  top: 0.h,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 5.h,
                                  child: const FormBuilderCustomPago(
                                    name: 'password',
                                    obscureText: false,
                                    hintText: 'DNI',
                                    keyType: TextInputType.number,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 35.w,
                          height: 10.h,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 0.5.h),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Ruc de la empresa',
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
                                  top: 0.h,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 5.h,
                                  child: const FormBuilderCustomPago(
                                    name: 'password',
                                    obscureText: false,
                                    hintText: 'RUC',
                                    keyType: TextInputType.text,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 0.8.h),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4.w),
                              child: SizedBox(
                                child: Text(
                                  'Su empresa es',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.5.sp,
                                    fontFamily: 'Quattrocento',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.radio_button_unchecked),
                                  Text(
                                    'Proveedor',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15.5.sp,
                                      fontFamily: 'Quattrocento',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Icon(Icons.local_shipping),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  const Icon(Icons.radio_button_unchecked),
                                  Text(
                                    'Bodeguero',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15.5.sp,
                                      fontFamily: 'Quattrocento',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Icon(Icons.store),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  //Termina
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 0.8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Nombre de la empresa',
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
                      top: 0.5.h,
                    ),
                    child: SizedBox(
                      width: 82.w,
                      height: 5.h,
                      child: const FormBuilderCustomPago(
                        name: 'password',
                        obscureText: false,
                        hintText: 'Empresa',
                        keyType: TextInputType.text,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 0.8.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Dirección',
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
                      top: 0.5.h,
                    ),
                    child: SizedBox(
                      width: 82.w,
                      height: 5.h,
                      child: const FormBuilderCustomPago(
                        name: 'password',
                        obscureText: false,
                        hintText: 'Dirección',
                        keyType: TextInputType.text,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.h,
                    ),
                    child: Container(
                      width: 50.w,
                      height: 7.h,
                      child: BotonLargo(
                        nameTexto: 'Regístrate',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
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
