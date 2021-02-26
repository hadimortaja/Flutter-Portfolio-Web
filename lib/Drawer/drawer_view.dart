import 'package:flutter/material.dart';
import 'package:portfolio_app_web/navigation_bar/navigation_item.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return SizedBox();
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Hadi Mortaja'),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.blue],
                        tileMode: TileMode.mirror)),
              ),
              for (var item in kNavigationItems)
                ListTile(
                  title: Text(item.text),
                  onTap: () {},
                ),
            ],
          ),
        );
      },
    );
  }
}
