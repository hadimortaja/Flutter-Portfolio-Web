import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

class HeaderBody extends StatelessWidget {
  final bool isMobile;

  const HeaderBody({
    this.isMobile = true,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'I\'m a Mobile',
          style: GoogleFonts.montserrat(fontSize: 35),
          maxLines: 1,
          maxFontSize: 35,
        ),
        AutoSizeText(
          'Developer < / >',
          style: GoogleFonts.montserrat(fontSize: 35),
          maxLines: 1,
          maxFontSize: 35,
        ),
        SizedBox(
          height: 30,
        ),
        AutoSizeText(
          'I have 2 years of experiance in Mobile Developmen in building beautiful apps in Android And Ios.',
          style: TextStyle(fontSize: 18),
          maxFontSize: 18,
          maxLines: 3,
        ),
        SizedBox(
          height: 40,
        ),
        FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7))),
            padding: EdgeInsets.symmetric(
                vertical: isMobile ?? false ? 12 : 18,
                horizontal: isMobile ?? false ? 10 : 18),
            color: Color(0xFF6C63FF),
            onPressed: () {},
            child: AutoSizeText(
              "Contact Me",
              style: TextStyle(
                  fontSize: isMobile ?? false ? 16 : 24, color: Colors.white),
              maxLines: 1,
            )),
      ],
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
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
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
