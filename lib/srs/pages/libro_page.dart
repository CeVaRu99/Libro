import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libros/srs/controllers/libro_controller.dart';
import 'package:libros/srs/model/producto.dart';

import 'mod_libro_page.dart';

class LibroPage extends StatelessWidget {
  const LibroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final libroCtrl = Get.put(LibroController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Libros'),
      ),
      body: Obx(() => libroCtrl.existeLibro.value
          ? InformacionLibro(
              libro: libroCtrl.libro.value,
            )
          : NoProducto()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.book_online),
        onPressed: () {
          Get.to(ModProductoPage());
        },
      ),
    );
  }
}

class NoProducto extends StatelessWidget {
  const NoProducto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Aún no has seleccionado un libro'),
    );
  }
}

class InformacionLibro extends StatelessWidget {
  final Libro libro;
  const InformacionLibro({Key? key, required this.libro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Text('Información General'),
          Divider(),
          ListTile(
            title: Text('Nombre del libro: ${this.libro.nombre}'),
          ),
          ListTile(
            title: Text('Precio del libro ${this.libro.precio}'),
          ),
          ListTile(
            title: Text('Cantidad de paginas ${this.libro.cantidad}'),
          ),
          Divider(),
          //... Sprep
          ...libro.categorias.map(
            (e) => ListTile(
              title: Text(e),
            ),
          )
        ],
      ),
    );
  }
}
