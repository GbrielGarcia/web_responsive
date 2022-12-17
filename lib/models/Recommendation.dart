import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Recommendation {
  final String? name, source, text;

  Recommendation({
    this.name,
    this.source,
    this.text,
  });
}

List<Recommendation> recommendations(BuildContext context) => [
      Recommendation(
          name: "Adrian Villena",
          source: "Cliente de Streaming Ec.",
          text: AppLocalizations.of(context)!.recommendationAdrian),
      Recommendation(
          name: "Anthony Delgado",
          source: "Cliente de Noticas Red (Ui/Ux)",
          text: AppLocalizations.of(context)!.recommendationAnthony),
      Recommendation(
          name: "Dario Mendoza",
          source: "Cliente de factura de consola realizado con C++.",
          text: AppLocalizations.of(context)!.recommendationDario),
    ];
