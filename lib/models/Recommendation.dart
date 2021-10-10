class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> recommendations = [
  Recommendation(
    name: 'Adrian Villena',
    source: 'Cliente de Streaming Ec.',
    text: '',
  ),
  Recommendation(
    name: 'Jose Huertas',
    source: 'Cliente de Super Huertas Tecnology.',
    text: '',
  ),
  Recommendation(
    name: 'Anthony Delgado',
    source: 'Cliente de Noticas Red (Ui/Ux)',
    text:
        'Me gusto el trabajo realizado ya que si cumplio con las especificaciones que le di.',
  ),
];
