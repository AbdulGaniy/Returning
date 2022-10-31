

import 'package:flutter/material.dart';

import 'margin.dart';



class DesignScaffold extends StatelessWidget {


  const DesignScaffold({
    Key? key,
    this.color = Colors.white,
    this.backgroundcolor = const Color(0xFFFAFAFA),
    required this.body,
    this.horizontalPadding = 29,
    this.respectSafeArea = false,
  }) : super(key: key);

  final Widget body;
  final Color backgroundcolor;
  final Color color;
  final double horizontalPadding;
  final bool respectSafeArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        top: true,
        bottom: false,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: screenWidth(context) * 0.05,
          ),
          children: [
            body,
          ],
        ),
      ),
    );
  }
}
