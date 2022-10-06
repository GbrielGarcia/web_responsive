class Privacy {
  final String? name, text;

  Privacy({this.name, this.text});
}

final List<Privacy> privacys = [
  Privacy(
    name: "Política",
    text: '''
Gabriel Código te informa sobre sus políticas, al momento de 
contratar los servicios de Gabriel Código  está aceptando de manera voluntaria las políticas de el mismo.
Una vez dado un bono o pago total para cualquier servicio que 
ofrezca Gabriel Código, será verificado y aprobado para el inicio del servicio. Caso contrario que el 
cliente desista de manera voluntaria sólo será entregado el 10% del dinero dado por parte del cliente.
....''',
  ),
  Privacy(
    name: "Suspensión de servicios",
    text:
    "Los servicios se dan de baja por incumplimiento por parte del cliente en los pagos acordados, cada "
        "renovación de servicio se tendrá que realizar una semana antes de la fecha de vencimiento. ",
  ),
  Privacy(
    name: "Obtención de datos personales",
    text:
    "Para utilizar nuestras aplicaciones y páginas web, no es necesario facilitar ningún dato personal.",
  ),
];
