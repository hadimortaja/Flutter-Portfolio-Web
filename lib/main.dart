import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app_web/Drawer/drawer_view.dart';
import 'package:portfolio_app_web/Header/header_view.dart';
import 'package:portfolio_app_web/Project/project_view.dart';
import 'package:portfolio_app_web/Skills/skills_view.dart';
import 'package:portfolio_app_web/navigation_bar/navigation_bar_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        theme: ThemeData(
          textTheme: TextTheme(
              headline4: GoogleFonts.montserrat(color: Colors.black),
              headline5:
                  GoogleFonts.montserrat(color: Colors.black, fontSize: 20)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue,
        ),
        home: PortfolioView());
  }
}

class PortfolioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final ScrollController scrollController =
        ScrollController(initialScrollOffset: 1750);
    //print(width);
    print(height);
    return Scaffold(
      endDrawer: DrawerView(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            NavigationBarView(),
            HeaderView(height: height),
            ProjectView(),
            SkillsView(),
            Container(
              height: height,
              width: width,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
