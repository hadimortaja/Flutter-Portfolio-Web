import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: height,
      width: 1092.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I\'m a Mobile',
                    style: GoogleFonts.montserrat(fontSize: 50),
                  ),
                  Text('Developer < / >',
                      style: GoogleFonts.montserrat(fontSize: 50)),
                  SizedBox(
                    height: 37,
                  ),
                  Text(
                      'I have 2 years of experiance in Mobile Development'
                      'in building beautiful apps in Android And Ios.',
                      style: TextStyle(fontSize: 18)),
                  SizedBox(
                    height: 40,
                  ),
                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      padding:
                          EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                      color: Color(0xFF6C63FF),
                      onPressed: () {},
                      child: Text("Contact Me",
                          style: TextStyle(fontSize: 22, color: Colors.white))),
                ],
              ),
            ),
            Image.asset(
              "images/mobile.png",
              scale: 1,
              height: 400,
              width: 300,
            )
          ],
        ),
      ),
    );
  }
}
