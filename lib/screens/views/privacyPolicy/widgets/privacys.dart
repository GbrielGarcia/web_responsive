import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/privacy.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/views/privacyPolicy/widgets/privacy_card.dart';

class Privacys extends StatelessWidget {
  const Privacys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
            Write.privacys,
            style: Theme.of(context).textTheme.headline6,
          )),
          const SizedBox(
            height: defaultPadding,
          ),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(
                    privacys.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: PrivacyCard(
                            privacy: privacys[index],
                          ),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
