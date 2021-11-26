class Privacy {
  final String? name, text;

  Privacy({this.name, this.text});
}

final List<Privacy> privacys = [
  Privacy(
    name: "Política de Privacidad",
    text: '''
BatCode te informa sobre su Política de Privacidad respecto al tratamiento y protección
de los datos de carácter personal de los usuarios y clientes que no son recabados
por la navegación o contratación de servicios a través de las aplicaciones realizadas por BatCode.''',
  ),
  Privacy(
    name: "Obtención de datos personales",
    text:
        "Para utilizar nuestras aplicacion y paginas web no es necesario que facilites ningún dato personal.",
  ),
];
