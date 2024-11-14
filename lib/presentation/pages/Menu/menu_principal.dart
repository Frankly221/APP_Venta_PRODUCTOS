import 'package:app_movil_market/presentation/pages/Menu/beltran.dart';
import 'package:app_movil_market/presentation/pages/Menu/lacteos.dart';
import 'package:app_movil_market/presentation/pages/Menu/navigation_bar_inferior.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/card_ancho.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/card_pedido_facil.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/card_title_img.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 32.0.h,
              width: 100.w,
              child: Stack(
                children: [
                  Container(
                    height: 28.0.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: coloresPersonalizados[3],
                      borderRadius: BorderRadius.only(
                        // Redondeado en la esquina superior izquierda
                        // Sin redondeo en la esquina superior derecha
                        bottomLeft: Radius.circular(60
                            .w), // Sin redondeo en la esquina inferior izquierda
                        bottomRight: Radius.circular(
                            60.w), // Redondeado en la esquina inferior derecha
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, top: 1.h),
                        child: Container(
                          width: 60.w,
                          height: 5.0.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 3.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 10.w,
                                  height: 4.h,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/imagenes/menu/imagen_gato.png',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                                Text(
                                  'Bodega beta Market',
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: 'JockeyOne',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
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
                      Container(
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
                    ],
                  ),
                  Positioned(
                      top: 8.h,
                      left: 33.5.w,
                      child: Text(
                        'Proveedores',
                        style: TextStyle(
                          fontSize: 23.sp,
                          fontFamily: 'Chicle',
                        ),
                      )),
                  Positioned(
                      top: 14.h,
                      left: 37.2.w,
                      child: Text(
                        'Chosica, Lima',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Quattrocento',
                        ),
                      )),
                  Positioned(
                    bottom: 9.h,
                    left: 3.w,
                    child: Container(
                      width: 20.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Image.asset(
                        'assets/imagenes/menu/laive.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1.5.h,
                    left: 25.w,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Beltran()));
                      },
                      child: Container(
                        width: 20.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Image.asset(
                          'assets/imagenes/menu/9.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1.5.h,
                    right: 25.w,
                    child: Container(
                      width: 20.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Image.asset(
                        'assets/imagenes/menu/san_jorge.png',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 9.h,
                    right: 3.w,
                    child: Container(
                      width: 20.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Image.asset(
                        'assets/imagenes/menu/gloria.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: SizedBox(
                height: 55.h,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  reverse: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Promociones para ti',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: 'Chicle',
                                ),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'ver más >',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontFamily: 'Chicle',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                                height: 15.h,
                                child: const CardAncho(
                                  text1: 'Llevate 2 Frascos a :',
                                  text2: 's/ 20.50',
                                  text3: 'Shampoo/acon...',
                                  text4: 'Frasco x 400/475...',
                                  imagenURL1: 'assets/imagenes/menu/1112.png',
                                  imagenURL2: 'assets/imagenes/menu/21.png',
                                  color: Colors.yellow,
                                )),
                            SizedBox(
                              height: 15.h,
                              child: const CardAncho(
                                text1: "Llegó el nuevo D'ono Wafer a :",
                                text2: 's/ 2.00',
                                text3: 'Wafer sabor cho...',
                                text4: 'Paquete x 12 un...',
                                imagenURL1: 'assets/imagenes/menu/32.png',
                                imagenURL2: 'assets/imagenes/menu/31.png',
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                                height: 15.h,
                                child: const CardAncho(
                                  text1: 'Llevate 2 Frascos a :',
                                  text2: 's/ 20.50',
                                  text3: 'Shampoo/acon...',
                                  text4: 'Frasco x 400/475...',
                                  imagenURL1: 'assets/imagenes/menu/1112.png',
                                  imagenURL2: 'assets/imagenes/menu/21.png',
                                  color: Colors.yellow,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Categorias',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: 'Chicle',
                                ),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'ver más >',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontFamily: 'Chicle',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Lacteos()));
                              },
                              child: SizedBox(
                                height: 15.h,
                                child: Card2(
                                  color: coloresPersonalizados[2],
                                  imagenURL: 'assets/imagenes/menu/41.png',
                                  text1: 'Lacteos',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                              child: Card2(
                                color: coloresPersonalizados[4],
                                imagenURL: 'assets/imagenes/menu/42.png',
                                text1: 'Snacks',
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                              child: Card2(
                                color: coloresPersonalizados[5],
                                imagenURL: 'assets/imagenes/menu/43.png',
                                text1: 'Aseo',
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Text(
                          'Pedido facil',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Chicle',
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 17.h,
                              child: const PedidoFacil(),
                            ),
                            SizedBox(
                              height: 17.h,
                              child: const PedidoFacil(),
                            ),
                            SizedBox(
                              height: 17.h,
                              child: const PedidoFacil(),
                            ),
                            SizedBox(
                              height: 17.h,
                              child: const PedidoFacil(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
