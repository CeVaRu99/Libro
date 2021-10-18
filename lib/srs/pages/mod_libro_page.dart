import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libros/srs/controllers/libro_controller.dart';
import 'package:libros/srs/model/producto.dart';

class ModProductoPage extends StatelessWidget {
  const ModProductoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final libroCtrl = Get.find<LibroController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Libro'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text('Agregar Dracula'),
              onPressed: () {
                libroCtrl.cargarProducto(
                    Libro(nombre: 'Dracula', precio: 375, cantidad: 500));
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Agregar Descuento'),
              onPressed: () {
                libroCtrl.cambiarPrecio(250);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Modificar Cantidad De Paginas'),
              onPressed: () {
                libroCtrl.cambiarCantidad(475);
              },
            ),
          ],
        ),
      ),
    );
  }
}
