import 'package:flutter/material.dart';
import 'package:portfolio_app_web/Header/header_body.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio_app_web/constants.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;

    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return HeaderMobileView();
        return Container(
          color: Colors.white,
          height: height,
          width: KInitWidth,
          child: Padding(
            padding: KScreenPadding,
            child: Row(
              children: [
                Expanded(
                  child: HeaderBody(),
                ),
                Image.asset(
                  'assets/images/header.png',
                  scale: 1,
                  height: isSmall ? imageWidth : 500,
                  width: 400,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 65),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/header.png',
              scale: 1,
              height: height * 0.3,
            ),
          ),
          HeaderBody(
            isMobile: true,
          ),
        ],
      ),
    );
  }
}
