import 'package:web_responsive_ui/core/assets/assets.dart';

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
    iconImage: Assets.html,
    iconImage1: Assets.css,
    iconImage2: Assets.javascript,
  ),
  Project(
    title: 'Super Huertas Tecnology',
    description:
        'Pagina web realizada ha cliente, para mostar informacion de sus productos y los servicios que ofrece en Manabi el carmen.',
    link: 'https://superhuertastecnology.com/#',
    iconImage: Assets.html,
    iconImage1: Assets.css,
    iconImage2: Assets.javascript,
  ),
  Project(
    title: 'Inox Hierro',
    description:
        'Pagina web realizada ha cliente, con diseño elegante y con una posicion global lo buscas y lo encuentras "trabajos en acero" "pasamanos en acero", el resultado es el primero.',
    link: 'https://inoxhierro.com',
    iconImage: Assets.html,
    iconImage1: Assets.jimdo,
    iconImage2: Assets.javascript,
  ),
  Project(
    title: 'Linterna',
    description:
        'Aplicacion para Ios y Android realizada con flutter, se trata de una herramienta de linterna con algunas funcionalidades, efecto de parpadeo y temporizador. ',
    link:
        'https://play.google.com/store/apps/details?id=com.gabrielcodigo.com.app_linterna',
    iconImage: Assets.dart,
    iconImage1: Assets.flutter,
    iconImage2: Assets.vscode,
  ),
];
