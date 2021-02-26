import 'package:flutter/material.dart';
import 'package:portfolio_app_web/Drawer/drawer_view.dart';
import 'package:portfolio_app_web/Header/header_view.dart';
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
    //print(width);
    print(height);
    return Scaffold(
      endDrawer: DrawerView(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBarView(),
            HeaderView(height: height),
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
