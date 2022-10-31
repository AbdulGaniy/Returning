import 'package:flutter/material.dart';

class DesignBackButton extends StatelessWidget {
  const DesignBackButton({
    Key? key,
    this.color = Colors.black,
     this.size = 28,
  }) : super(key: key);

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child:  Icon(Icons.arrow_back, size: 30, color: color,)
    );
  }
}
