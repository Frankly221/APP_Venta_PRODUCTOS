import 'package:app_movil_market/presentation/pages/Menu/menu_principal.dart';
import 'package:app_movil_market/presentation/pages/recuperar_cuenta/nueva_password.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MenuPrincipal(),
        );
      },
    );
  }
}
