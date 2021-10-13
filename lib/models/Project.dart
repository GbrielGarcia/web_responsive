class Project {
  final String? title;
  final String? link;
  final String? description;
  final String? iconImage;
  final String? iconImage1;
  final String? iconImage2;

  Project({
    this.title,
    this.description,
    this.link,
    this.iconImage,
    this.iconImage1,
    this.iconImage2,
  });
}

List<Project> projects = [
  Project(
    title: 'Streaming Ec',
    description:
        'Pagina web realizada ha cliente, realizada con la finalidad de mostrar los multiples servicios que ofrece de streaming.',
    link: 'https://streamingecu.com/',
    iconImage: 'assets/icons/html.png',
    iconImage1: 'assets/icons/css.png',
    iconImage2: 'assets/icons/javascript.png',
  ),
  Project(
    title: 'Noticias Red',
    description:
        'Aplicacion para Ios y Android realizada con flutter, se trata de una aplicacion de noticias del continente Americano. ( proyecto estudiantil.) ',
    link: 'https://github.com/GbrielGarcia/noticias',
    iconImage: 'assets/icons/dart.png',
    iconImage1: 'assets/icons/flutter.png',
    iconImage2: 'assets/icons/vscode.png',
  ),
  Project(
    title: 'Super Huertas Tecnology',
    description:
        'Pagina web realizada ha cliente, para mostar informacion de sus productos y los servicios que ofrece en Manabi el carmen.',
    link: 'https://superhuertastecnology.com/#',
    iconImage: 'assets/icons/html.png',
    iconImage1: 'assets/icons/css.png',
    iconImage2: 'assets/icons/javascript.png',
  ),
  Project(
    title: 'Movie Info',
    description:
        'Aplicacion para Ios y Android realizada con flutter, en esta aplicacion se puede observa la informacion de las peliculas y en el link para verlas.',
    link: 'https://github.com/GbrielGarcia/noticias',
    iconImage: 'assets/icons/dart.png',
    iconImage1: 'assets/icons/flutter.png',
    iconImage2: 'assets/icons/vscode.png',
  ),
];
