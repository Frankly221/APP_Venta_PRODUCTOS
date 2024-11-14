import 'package:app_movil_market/presentation/pages/Menu/navigation_bar_inferior.dart';
import 'package:app_movil_market/presentation/widgets_personalizados/Login/card_pedido_facil.dart';
import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Lacteos extends StatelessWidget {
  const Lacteos({super.key});

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
                  color: coloresPersonalizados[2],
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
                    'Lacteos',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: 'Chicle',
                    ),
                  ),
                ),
                Positioned(
                  left: 7.w,
                  top: 12.h,
                  child: Text(
                    'Categoria',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Quattrocento',
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
                  left: 39.w,
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
                  top: 17.h,
                  right: -1.w,
                  child: SizedBox(
                    width: 33.w,
                    height: 20.h,
                    child: Image.asset('assets/imagenes/menu/menu_12.png'),
                  ),
                )
              ],
            ),
            const Expanded(child: SizedBox()),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 53.h,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Número de columnas
                      mainAxisSpacing:
                          1.0.h, // Espacio vertical entre elementos
                      crossAxisSpacing:
                          8.0.w, // Espacio horizontal entre elementos
                      childAspectRatio:
                          1, // Proporción de ancho:alto; ajusta este valor para ver el cambio en altura
                    ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const PedidoFacil();
                    },
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: ParteInferior(),
    );
  }
}
