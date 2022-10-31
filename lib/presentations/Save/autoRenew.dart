import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zimvest/widgets/app_svg.dart';
import 'package:zimvest/widgets/design_scaffold.dart';
import 'package:zimvest/widgets/margin.dart';
import 'package:zimvest/widgets/savingsCard.dart';

import '../../widgets/app_img.dart';
import '../../widgets/design_button.dart';

class AutoRenew extends StatefulWidget {

  const AutoRenew({Key? key}) : super(key: key);


  @override
  State<AutoRenew> createState() => _AutoRenewState();
}

class _AutoRenewState extends State<AutoRenew> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
      });
    }
    else
    {
      setState(() {
        isSwitched = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YMargin(MediaQuery.of(context).size.height*0.1),
          Center(
            child: Image.asset(
              kCalender,
              width: 128,
              height: 128,
            ),
          ),
          Center(
            child: Text('We will send you auto reminders every 3rd day\nof the month at 11:20 pm',
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF444E54)
            ),
            textAlign: TextAlign.center,),
          ),
          YMargin(MediaQuery.of(context).size.height*0.03),
          SavingsCard(
              onPressed: (){},
              trailingIcon: false),
          YMargin(MediaQuery.of(context).size.height*0.03),
          Text(
            'How do you want to receive notifictions?',
            textAlign: TextAlign.left,
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF01061F)
            ),
          ),
          YMargin(MediaQuery.of(context).size.height*0.03),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            child: Column(

              children: [
                ListTile(
                  leading: Text(
                    'Email'
                  ),
                  trailing: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.white,
                    activeTrackColor: Color(0xFFD7A81E),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                ListTile(
                  leading: Text(
                      'Email'
                  ),
                  trailing: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.white,
                    activeTrackColor: Color(0xFFD7A81E),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey,

                  ),
                ),

              ],
            ),

          ),
          YMargin(MediaQuery.of(context).size.height*0.05),
          DesignButton(
              title: 'Looks good, Continue',
              textColor: Colors.white,
              fillColor: Color(0xFFD7A81E),
              onPressed: (){}),
          YMargin(MediaQuery.of(context).size.height*0.03),
          DesignButton(
              title: 'Edit auto reminder settings',
              hasBoarder: true,
              borderColor:Color(0xFFD7A81E),
              textColor: Color(0xFFD7A81E),
              fillColor: Color(0xFFFFFDF8),
              onPressed: (){})
        ],
      ),
    );
  }
}
