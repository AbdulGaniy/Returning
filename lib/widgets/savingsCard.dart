import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_svg.dart';

class SavingsCard extends StatelessWidget {
  final Function() onPressed;
  final bool trailingIcon;
  const SavingsCard({Key? key, required this.onPressed, required this.trailingIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.1,
      color: Colors.white,
      child: ListTile(
        leading: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child:SvgPicture.asset(
                kBoard
            )
        ),
        title: Text(
          'Next free withdrawal date',
          style: GoogleFonts.outfit(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF6F7278)
          ),
        ),
        subtitle: Text(
          '28th Sept, 2023',
          style: GoogleFonts.outfit(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF01061F)
          ),
        ),
        trailing: GestureDetector(
          child: Icon(
              Icons.info_outline,
            color: trailingIcon? Colors.grey:Colors.white,
          ),
          onTap: onPressed,
        ) ,

      )
    );
  }
}
