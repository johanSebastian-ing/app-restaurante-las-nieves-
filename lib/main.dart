import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/comidas.dart';
import 'package:flutter_application_1/Screens/usuario.dart';

import 'Screens/ensayocarrito.dart';
import 'Screens/inicio_login.dart';
import 'Screens/inicio_prew.dart';
import 'Screens/crearcuenta.dart';
import 'Screens/menu.dart';
import 'Screens/reserva.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mi app',
    
        home:inicioprew(),
      
    );
  }
}
