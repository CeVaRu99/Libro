import 'package:get/get.dart';
import 'package:libros/srs/model/producto.dart';

class LibroController extends GetxController {
  var existeLibro = false.obs;
  var libro = Libro().obs;

  void cargarProducto(Libro pProducto) {
    this.libro.value = pProducto;
    this.existeLibro.value = true;
  }

  void cambiarPrecio(int pPrecio) {
    this.libro.update((val) {
      val!.precio = pPrecio;
    });
  }

  void agregarCategoria(String pCategoria) {
    this.libro.update((val) {
      val!.categorias = [...val.categorias, pCategoria];
    });
  }

  void cambiarCantidad(int pCantidad) {
    this.libro.update((val1) {
      val1!.cantidad = pCantidad;
    });
  }
}
