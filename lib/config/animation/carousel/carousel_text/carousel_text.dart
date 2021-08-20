import 'package:flutter/material.dart';
import 'package:web_responsive_ui/config/utils/components/typography.dart';

RichText slide1Text = RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'Diseños', style: carouselBlueTextStyle),
      TextSpan(text: ' hermosos ', style: carouselWhiteTextStyle),
      TextSpan(text: 'de ', style: carouselBlueTextStyle),
      TextSpan(text: 'Aplicaciones', style: carouselBlueTextStyle)
    ],
  ),
  textAlign: TextAlign.center,
);

RichText slide2Text = RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'Productivo', style: carouselWhiteTextStyle),
      TextSpan(text: ' al', style: carouselWhiteTextStyle),
      TextSpan(text: ' crear aplicaciones ', style: carouselBlueTextStyle),
    ],
  ),
  textAlign: TextAlign.center,
);

RichText slide3Text = RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'Crea', style: carouselBlueTextStyle),
      TextSpan(text: ' aplicaciones ', style: carouselWhiteTextStyle),
      TextSpan(text: 'mas rapido', style: carouselWhiteTextStyle)
    ],
  ),
  textAlign: TextAlign.center,
);

RichText slide4Text = RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'Objetivo', style: carouselBlueTextStyle),
      TextSpan(text: ' aplicaciones ', style: carouselWhiteTextStyle),
      TextSpan(text: 'móvil, web y escritorio', style: carouselBlueTextStyle)
    ],
    style: TextStyle(height: 1.1),
  ),
  textAlign: TextAlign.center,
);
