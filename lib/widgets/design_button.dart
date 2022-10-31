import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'margin.dart';


class DesignButton extends StatelessWidget {
  const DesignButton({
    Key? key,
    required this.title,
    this.textColor = Colors.white,
    this.fontSize = 16,
    this.width = 0.9,
    required this.onPressed,
    this.fillColor = Colors.white,
    this.hasFillBoarder = true,
    this.borderColor = Colors.black,
    this.loading = false,
    this.loadingPercentage,
    this.hasBoarder = false,
  }) : super(key: key);

  final String title;
  final Color textColor;
  final double? fontSize;
  final bool loading;
  final double width;
  final void Function() onPressed;
  final Color fillColor;
  final Color borderColor;
  final bool hasFillBoarder;
  final bool hasBoarder;
  final double? loadingPercentage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: screenHeight(context) * 0.065,
        width: MediaQuery.of(context).size.width * width,
        decoration: BoxDecoration(
          color: hasFillBoarder ? fillColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          // boxShadow: [
          //   BoxShadow(
          //     color:Colors.black.withOpacity(0.3),
          //     blurRadius:0,
          //     offset: const Offset(0, 4),
          //   )
          // ],
          border: hasBoarder
              ? Border.all(
                  color: borderColor,
                  width: 1,
                )
              : null,
        ),
        child: Padding(
          padding: hasFillBoarder
              ? EdgeInsets.symmetric(vertical: screenHeight(context) * 0.01)
              : EdgeInsets.zero,
          child: loading
          ? Center(
            child: CircularProgressIndicator(
              value:loadingPercentage,
              strokeWidth: 6,
              semanticsLabel: 'Loading...',
              backgroundColor: Colors.black,
              valueColor: const AlwaysStoppedAnimation(Colors.white),
            ),
          ):
          Center(
            child: Text(
              title,
              style: GoogleFonts.outfit(
                color: textColor,
                fontSize: fontSize ?? 24.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
