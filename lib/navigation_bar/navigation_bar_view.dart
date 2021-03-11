import 'package:flutter/material.dart';
import 'package:portfolio_app_web/navigation_bar/navigation_item.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) {
          return Container(
            height: 60,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
                //Spacer(),
                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openEndDrawer())
              ],
            ),
          );
        }
        var onPressed = () => print('Clicked');

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          width: 1092.8,
          child: Row(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              Spacer(),
              for (var item in kNavigationItems)
                NavigtonBarItem(onPressed: onPressed, text: item.text),
            ],
          ),
        );
      },
    );
  }
}

class NavigtonBarItem extends StatelessWidget {
  const NavigtonBarItem({
    Key key,
    @required this.onPressed,
    @required this.text,
  }) : super(key: key);

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 650;
    return Container(
      padding: EdgeInsets.only(left: 64),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: isSmall ? 14 : 16),
        ),
      ),
    );
  }
}
