import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libros/srs/pages/mod_libro_page.dart';
import 'package:libros/srs/pages/libro_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Libros',
      initialRoute: '/Libro',
      getPages: [
        GetPage(name: '/Libro', page: () => LibroPage()),
        GetPage(name: '/modLirbro', page: () => ModProductoPage())
      ],
    );
  }
}
