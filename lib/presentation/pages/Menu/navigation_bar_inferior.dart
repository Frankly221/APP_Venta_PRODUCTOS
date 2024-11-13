import 'package:app_movil_market/utils/colores.dart';
import 'package:flutter/material.dart';

class ParteInferior extends StatelessWidget {
  const ParteInferior({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: coloresPersonalizados[3],
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '', // Oculta el label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.point_of_sale),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false, // Oculta los labels seleccionados
      showUnselectedLabels: false,
    );
  }
}
