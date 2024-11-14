import 'package:app_movil_market/presentation/pages/Menu/navigation_bar_inferior.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/card_ancho.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/card_pedido_facil.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PromocionesDescuento extends StatelessWidget {
  const PromocionesDescuento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 100.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: coloresPersonalizados[2],
                  ),
                ),
                Positioned(
                  bottom: -15.h,
                  left: -8.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.w),
                          topRight: Radius.circular(25.w)),
                    ),
                    width: 100.w,
                    height: 20.h,
                  ),
                ),
                Positioned(
                  bottom: -15.h,
                  right: -8.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.w),
                          topRight: Radius.circular(25.w)),
                    ),
                    width: 100.w,
                    height: 20.h,
                  ),
                ),
                Positioned(
                  top: 15.h,
                  left: 5.w,
                  child: Text(
                    'Promociones y Descuentos',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: 'Chicle',
                    ),
                  ),
                ),
                Positioned(
                  left: 8.w,
                  top: 4.h,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    iconSize: 0.4.dp,
                    onPressed: () {
                      Navigator.pop(context); // Regresa a la página anterior
                    },
                  ),
                ),
                Positioned(
                  left: 30.w,
                  top: 3.h,
                  child: Container(
                    width: 34.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/imagenes/menu/imagen_gato.png',
                          fit: BoxFit.scaleDown,
                        ),
                        Text(
                          'Bodega beta Market',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'JockeyOne',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 16.w,
                  top: 2.6.h,
                  child: Container(
                    width: 10.w,
                    height: 5.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  right: 3.w,
                  top: 2.6.h,
                  child: Container(
                    width: 10.w,
                    height: 5.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.notifications_none_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 22.h,
                  left: 4.w,
                  child: SizedBox(
                    width: 30.w,
                    height: 7.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Categoria           ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Quattrocento',
                            )),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Seleccione'),
                              Icon(Icons.arrow_drop_down_outlined),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 22.h,
                  left: 36.w,
                  child: SizedBox(
                    width: 30.w,
                    height: 7.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Sub-Categoria',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Quattrocento',
                            )),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Seleccione'),
                              Icon(Icons.arrow_drop_down_outlined),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 22.h,
                  right: 2.w,
                  child: SizedBox(
                    width: 30.w,
                    height: 7.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Proveedor',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Quattrocento',
                            )),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Seleccione'),
                              Icon(Icons.arrow_drop_down_outlined),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: 53.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 39.h,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Promociones',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Chicle',
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 15.h,
                                        child: const CardAncho(
                                          text1:
                                              "Llegó el nuevo D'ono Wafer a :",
                                          text2: 's/ 2.00',
                                          text3: 'Wafer sabor cho...',
                                          text4: 'Paquete x 12 un...',
                                          imagenURL1:
                                              'assets/imagenes/menu/32.png',
                                          imagenURL2:
                                              'assets/imagenes/menu/31.png',
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                        child: const CardAncho(
                                          text1:
                                              "Llegó el nuevo D'ono Wafer a :",
                                          text2: 's/ 2.00',
                                          text3: 'Wafer sabor cho...',
                                          text4: 'Paquete x 12 un...',
                                          imagenURL1:
                                              'assets/imagenes/menu/32.png',
                                          imagenURL2:
                                              'assets/imagenes/menu/31.png',
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 15.h,
                                        child: const CardAncho(
                                          text1:
                                              "Llegó el nuevo D'ono Wafer a :",
                                          text2: 's/ 2.00',
                                          text3: 'Wafer sabor cho...',
                                          text4: 'Paquete x 12 un...',
                                          imagenURL1:
                                              'assets/imagenes/menu/32.png',
                                          imagenURL2:
                                              'assets/imagenes/menu/31.png',
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                        child: const CardAncho(
                                          text1:
                                              "Llegó el nuevo D'ono Wafer a :",
                                          text2: 's/ 2.00',
                                          text3: 'Wafer sabor cho...',
                                          text4: 'Paquete x 12 un...',
                                          imagenURL1:
                                              'assets/imagenes/menu/32.png',
                                          imagenURL2:
                                              'assets/imagenes/menu/31.png',
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 15.h,
                                        child: const CardAncho(
                                          text1:
                                              "Llegó el nuevo D'ono Wafer a :",
                                          text2: 's/ 2.00',
                                          text3: 'Wafer sabor cho...',
                                          text4: 'Paquete x 12 un...',
                                          imagenURL1:
                                              'assets/imagenes/menu/32.png',
                                          imagenURL2:
                                              'assets/imagenes/menu/31.png',
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                        child: const CardAncho(
                                          text1:
                                              "Llegó el nuevo D'ono Wafer a :",
                                          text2: 's/ 2.00',
                                          text3: 'Wafer sabor cho...',
                                          text4: 'Paquete x 12 un...',
                                          imagenURL1:
                                              'assets/imagenes/menu/32.png',
                                          imagenURL2:
                                              'assets/imagenes/menu/31.png',
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              child: Text(
                                'Descuentos',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: 'Chicle',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: SizedBox(
                            width: double.infinity,
                            height: 14.h,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                            height: 15.h,
                                            child: const CardAncho(
                                              text1: 'Llevate 2 Frascos a :',
                                              text2: 's/ 20.50',
                                              text3: 'Shampoo/acon...',
                                              text4: 'Frasco x 400/475...',
                                              imagenURL1:
                                                  'assets/imagenes/menu/1112.png',
                                              imagenURL2:
                                                  'assets/imagenes/menu/21.png',
                                              color: Colors.yellow,
                                            )),
                                        SizedBox(
                                            height: 15.h,
                                            child: const CardAncho(
                                              text1: 'Llevate 2 Frascos a :',
                                              text2: 's/ 20.50',
                                              text3: 'Shampoo/acon...',
                                              text4: 'Frasco x 400/475...',
                                              imagenURL1:
                                                  'assets/imagenes/menu/1112.png',
                                              imagenURL2:
                                                  'assets/imagenes/menu/21.png',
                                              color: Colors.yellow,
                                            )),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                            height: 15.h,
                                            child: const CardAncho(
                                              text1: 'Llevate 2 Frascos a :',
                                              text2: 's/ 20.50',
                                              text3: 'Shampoo/acon...',
                                              text4: 'Frasco x 400/475...',
                                              imagenURL1:
                                                  'assets/imagenes/menu/1112.png',
                                              imagenURL2:
                                                  'assets/imagenes/menu/21.png',
                                              color: Colors.yellow,
                                            )),
                                        SizedBox(
                                            height: 15.h,
                                            child: const CardAncho(
                                              text1: 'Llevate 2 Frascos a :',
                                              text2: 's/ 20.50',
                                              text3: 'Shampoo/acon...',
                                              text4: 'Frasco x 400/475...',
                                              imagenURL1:
                                                  'assets/imagenes/menu/1112.png',
                                              imagenURL2:
                                                  'assets/imagenes/menu/21.png',
                                              color: Colors.yellow,
                                            )),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                            height: 15.h,
                                            child: const CardAncho(
                                              text1: 'Llevate 2 Frascos a :',
                                              text2: 's/ 20.50',
                                              text3: 'Shampoo/acon...',
                                              text4: 'Frasco x 400/475...',
                                              imagenURL1:
                                                  'assets/imagenes/menu/1112.png',
                                              imagenURL2:
                                                  'assets/imagenes/menu/21.png',
                                              color: Colors.yellow,
                                            )),
                                        SizedBox(
                                            height: 15.h,
                                            child: const CardAncho(
                                              text1: 'Llevate 2 Frascos a :',
                                              text2: 's/ 20.50',
                                              text3: 'Shampoo/acon...',
                                              text4: 'Frasco x 400/475...',
                                              imagenURL1:
                                                  'assets/imagenes/menu/1112.png',
                                              imagenURL2:
                                                  'assets/imagenes/menu/21.png',
                                              color: Colors.yellow,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const ParteInferior(),
    );
  }
}