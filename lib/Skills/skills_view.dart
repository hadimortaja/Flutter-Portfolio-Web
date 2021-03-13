import 'package:flutter/material.dart';
import 'package:portfolio_app_web/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      if (size.isMobile) return SkillsMobileView();
      return SkillsDesktopView();
    });
  }
}

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KScreenPadding,
      width: KInitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 20,
          ),
          for (var rowIndex = 0; rowIndex < skills.length / 8; rowIndex++) ...[
            Row(
              children: [
                for (var index = 0; index < skills.length / 3; index++)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: index != 0 ? 8 : 0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: ColorsAsset.all.elementAt(index),
                            ),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          skills.elementAt((index * 2) + rowIndex),
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ]
        ],
      ),
    );
  }
}

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

final skills = [
  'Flutter',
  // 'Dart',
  // 'Bloc',
  // 'Provider',
  // 'GetX',
  // 'RiverPod',
  'Kotlin',
  'Swift',
  'Php',
  'Firebase',
  'RestApi',
  'Java',
  'MongoDb',
  'JavaScript',
  'UI Design',
  'HTML/CSS',
];

class ColorsAsset {
  static const red = Colors.red;
  static const green = Colors.green;
  static const blue = Colors.blue;
  static const yellow = Colors.yellow;

  static const List<Color> all = [
    red,
    green,
    blue,
    yellow,
    red,
    green,
    blue,
    yellow
  ];
}
