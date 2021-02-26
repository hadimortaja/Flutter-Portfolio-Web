import 'package:flutter/material.dart';

class NavigationItem {
  final String text;
  final Icon icon;

  NavigationItem({this.text, this.icon});
}

final kNavigationItems = [
  NavigationItem(text: 'Projects'),
  NavigationItem(text: 'Skills'),
  NavigationItem(text: 'About Me'),
  NavigationItem(text: 'Blog'),
];
