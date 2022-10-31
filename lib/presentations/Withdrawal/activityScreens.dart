import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zimvest/widgets/design_back_button.dart';
import 'package:zimvest/widgets/design_scaffold.dart';
import 'package:zimvest/widgets/margin.dart';

import 'comleteWithdrawal.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DesignBackButton(),
            YMargin(MediaQuery.of(context).size.height*0.03),
            Text(
                'Activity',
              style: GoogleFonts.outfit(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )
            ),
            YMargin(MediaQuery.of(context).size.height*0.03),
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height ,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: GestureDetector(
                  child: ListView.separated(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.2,),
                      itemBuilder: (context, index) {
                        return DepositList();
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: 30),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CompletedWithdrawal())
                    );
                  }
                )
              ),
            )
          ],
        )
    );
  }
}

class DepositList extends StatelessWidget {
  const DepositList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            color: Color(0xFFECFBEC),
            shape: BoxShape.circle
        ),
        child: Transform.rotate(
            angle: -pi / 4,
            child: Icon(Icons.arrow_back, color: Color(0xFF06B856),)),
      ),
      title: Text(
        'Deposit',
        style: GoogleFonts.outfit(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFF01061F)
        ),
      ) ,
      subtitle:  Text(
        'Jun 30 2021',
        style: GoogleFonts.outfit(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ) ,
      trailing: Text(
        '₦349,000.52',
        style: GoogleFonts.outfit(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ) ,
    );
  }
}

