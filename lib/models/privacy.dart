class Privacy {
  final String? name, text;

  Privacy({this.name, this.text});
}

final List<Privacy> privacys = [
  Privacy(
    name: "Política de Privacidad",
    text: '''
Gabriel Garcia te informa sobre su Política de Privacidad respecto del tratamiento y protección de los datos de carácter personal de los usuarios y clientes que puedan ser recabados por la navegación o contratación de servicios a través del sitio Web DIRECCIÓN-WEB.

En este sentido, el Titular garantiza el cumplimiento de la normativa vigente en materia de protección de datos personales, reflejada en la Ley Orgánica 3/2018, de 5 de diciembre, de Protección de Datos Personales y de Garantía de Derechos Digitales (LOPD GDD). Cumple también con el Reglamento (UE) 2016/679 del Parlamento Europeo y del Consejo de 27 de abril de 2016 relativo a la protección de las personas físicas (RGPD).

El uso de sitio Web implica la aceptación de esta Política de Privacidad así como las condiciones incluidas en el Aviso Legal.
        ''',
  ),
  Privacy(
    name: "Obtención de datos personales",
    text:
        "Para utilizar nuestras aplicacion y paginas web no es necesario que facilites ningún dato personal.",
  ),
];
