import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app_web/utils/hover_extensions.dart';

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
          style: Theme.of(context).textTheme.headline4,
          maxLines: 1,
          maxFontSize: 35,
        ),
        AutoSizeText(
          'Developer < / >',
          style: Theme.of(context).textTheme.headline4,
          // GoogleFonts.montserrat(fontSize: 35)
          maxLines: 1,
          maxFontSize: 35,
        ),
        SizedBox(
          height: 30,
        ),
        AutoSizeText(
          'I have 2 years of experiance in Mobile Development in building beautiful apps in Android And Ios.',
          style: TextStyle(fontSize: 18),
          maxFontSize: 20,
          maxLines: 5,
        ),
        SizedBox(
          height: 30,
        ),
        // ignore: deprecated_member_use
        FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7))),
          padding: EdgeInsets.symmetric(
              vertical: isMobile ?? false ? 14 : 18,
              horizontal: isMobile ?? false ? 12 : 18),
          color: Color(0xFF6C63FF),
          onPressed: () {},
          child: AutoSizeText(
            "Contact Me",
            style: TextStyle(
                fontSize: isMobile ?? false ? 16 : 24, color: Colors.white),
            maxLines: 1,
          ),
        )//.showCursorOnHover,
      ],
    );
  }
}
