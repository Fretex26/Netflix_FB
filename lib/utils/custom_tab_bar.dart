import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {

  final List <Tab> tabs;

  const CustomTabBar({required this.tabs, super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState(tabs);
}

class _CustomTabBarState extends State<CustomTabBar> {

  List <Tab> tabs;

  _CustomTabBarState(this.tabs);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            TabBar(tabs: tabs)
          ]
        ),
      ),
    );
  }
}