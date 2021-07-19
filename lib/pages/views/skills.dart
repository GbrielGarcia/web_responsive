import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_responsive_ui/config/assets/assets.dart';
import 'package:web_responsive_ui/config/constant/constants.dart';
import 'package:web_responsive_ui/config/constant/screen.dart';
import 'package:web_responsive_ui/config/model/skill.dart';

List<Skill> skills = [
  Skill(skill: "WordPress", percentage: 70),
  Skill(skill: "Flutter", percentage: 40),
  Skill(skill: "Dart", percentage: 25),
  Skill(skill: "Go", percentage: 10),
];

class SkillsViews extends StatelessWidget {
  const SkillsViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: ScreenHelper(
          desktop: _buildUi(kDesktopMaxWidth),
          tablet: _buildUi(kTabletMaxWidth),
          mobile: _buildUi(getMobileMaxWidth(context)),
        ));
  }
}

Widget _buildUi(double width) {
  return Center(
    child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          child: Flex(
            direction: ScreenHelper.isMobile(context)
                ? Axis.vertical
                : Axis.horizontal,
            children: [
              Expanded(
                flex: ScreenHelper.isMobile(context) ? 0 : 2,
                child: Image.asset(
                  Assets.avatar,
                  width: 300.0,
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              Expanded(
                flex: ScreenHelper.isMobile(context) ? 0 : 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Habilidades".toUpperCase(),
                      style: GoogleFonts.oswald(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Estas son las habilidades enumeradas con el porcentaje de conomiento.',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Column(
                      children: skills
                          .map(
                            (skill) => Container(
                              margin: EdgeInsets.only(bottom: 15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: skill.percentage,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10.0),
                                      alignment: Alignment.centerLeft,
                                      height: 38.0,
                                      child: Text(skill.skill),
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    flex: 100 - skill.percentage,
                                    child: Divider(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "${skill.percentage}%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}

      // color: Colors.blue[600],
      // child: Center(
      //   child: FittedBox(
      //     fit: BoxFit.contain,
      //     child: Text(
      //       'Skills',
      //       style: GoogleFonts.montserratAlternates(
      //         fontSize: 80,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),
 
