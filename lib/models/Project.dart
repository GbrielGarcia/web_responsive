class Project {
  final String? title, description, link;

  Project({this.title, this.description, this.link});
}

List<Project> projects = [
  Project(
      title: 'Streaming Ec',
      description:
          'Pagina web realizada ha cliente, realizada con la finalidad de mostrar los multiples servicios que ofrece de streaming.',
      link: 'https://streamingecu.com/'),
  Project(
      title: 'Noticas Red',
      description:
          'Aplicacion para Ios y Android realizada con flutter, se trata de una aplicacion de noticias del continente Americano. ',
      link: 'https://github.com/GbrielGarcia/noticias'),
  Project(
      title: 'Movie Info',
      description:
          'Aplicacion para Ios y Android realizada con flutter, en esta aplicacion se puede observa la informacion de las peliculas y en el link para verlas.',
      link: 'https://github.com/GbrielGarcia/noticias'),
  Project(
      title: 'Super Huertas Tecnology',
      description:
          'Pagina web realizada ha cliente, para mostar informacion de sus productos y los servicios que ofrece en Manabi el carmen.',
      link: 'https://superhuertastecnology.com/#'),
];
