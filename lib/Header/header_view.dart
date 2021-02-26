import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app_web/Header/header_body.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return HeaderMobileView();
        return Container(
          color: Colors.white,
          height: height,
          width: 1092.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: HeaderBody(),
                ),
                Image.asset(
                  'assets/images/mobile.png',
                  scale: 1,
                  height: 400,
                  width: 300,
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
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Column(
        children: [
          Image.asset(
            'assets/images/mobile.png',
            scale: 1,
            height: height * 0.3,
          ),
          HeaderBody(
            isMobile: true,
          ),
        ],
      ),
    );
  }
}
