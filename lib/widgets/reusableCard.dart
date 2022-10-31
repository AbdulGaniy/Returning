import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_img.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.title, required this.subtitle, required this.leadingIcon, required this.hasTrailingIcon, required this.iconColor, required this.onPressed}) : super(key: key);
  final String title;
  final Function() onPressed;
  final String subtitle;
  final Widget leadingIcon;
  final Color iconColor;
  final bool hasTrailingIcon;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.13,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
        ),
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle
            ),
            child:leadingIcon
          ),
          title: Text(
            title,
            textScaleFactor: 1,
            style: GoogleFonts.outfit(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF01061F)
            ),
          ),
          subtitle: Text(
            subtitle,
            style: GoogleFonts.outfit(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF6F7278)
            ),
          ),
          trailing: Icon(
              Icons.chevron_right,
            color: hasTrailingIcon? Colors.grey: Colors.white,
          ) ,

        ),
      ),
    );
  }
}
