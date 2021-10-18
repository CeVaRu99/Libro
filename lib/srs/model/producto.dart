class Libro {
  String? nombre;
  int? precio;
  int? cantidad;
  List<String> categorias;

  Libro({
    this.nombre,
    this.precio,
    this.cantidad,
    this.categorias = const [],
  });
}
