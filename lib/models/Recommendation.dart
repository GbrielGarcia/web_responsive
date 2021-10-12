class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> recommendations = [
  Recommendation(
    name: "Adrian Villena",
    source: "Cliente de Streaming Ec.",
    text:
        "Exelente servicio, una experiencia increible al momento de la navegación por su increible diseño moderno y que se adapta al usuario y a cualquier dispositivo estoy totalmente satisfecho y la experiencia y la rapidez de carga es fantastica, reconmedable al 100%",
  ),
  Recommendation(
    name: "Anthony Delgado",
    source: "Cliente de Noticas Red (Ui/Ux)",
    text:
        "Me gusto el trabajo realizado ya que si cumplio con las especificaciones que le di.",
  ),
  Recommendation(
    name: "Dario Mendoza",
    source: "Cliente de factura de consola realizado con C++.",
    text: "La aplicacion de consola bien realizada, lo recomiendo.",
  ),
];
