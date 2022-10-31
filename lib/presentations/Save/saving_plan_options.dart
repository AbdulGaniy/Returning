import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:zimvest/presentations/Save/autoRenew.dart';
import 'package:zimvest/widgets/app_svg.dart';
import 'package:zimvest/widgets/design_scaffold.dart';
import 'package:zimvest/widgets/reusableCard.dart';

import '../../widgets/app_img.dart';
import '../../widgets/design_back_button.dart';
import '../../widgets/design_button.dart';
import '../../widgets/margin.dart';

class TargetSavings extends StatefulWidget {
  const TargetSavings({Key? key}) : super(key: key);

  @override
  State<TargetSavings> createState() => _TargetSavingsState();
}

class _TargetSavingsState extends State<TargetSavings> {
  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DesignBackButton(),
          YMargin(MediaQuery.of(context).size.height*0.03),
          Text(
              'Your Savings Plan',
              style: GoogleFonts.outfit(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )
          ),
          YMargin(MediaQuery.of(context).size.height*0.05),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width,

            child: Column(
              children: [
                ListTile(
                  leading: Text("Plan name",
                  style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6F7278)
                  ),),
                  trailing: Text(
                    'Car',
                    style: GoogleFonts.outfit(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF01061F)
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Divider(),
                ),
                ListTile(
                    leading: Text(
                      'Target amount',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF6F7278)
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '₦10,000',
                          style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.edit_calendar,
                      color: Color(0xFFA5ADBC),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Divider(),
                ),
                ListTile(
                    leading: Text(
                      'Target date',
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF6F7278)
                      ),
                    ),
                    trailing:Text(
                     'May 31, 2022',
                  style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
                ),
              ],
            ),


          ),
          YMargin(30),
          Container(
            padding: EdgeInsets.only(top:10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color(0xFFD7A81E).withOpacity(0.2),
            ),
            width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height*0.13,
             child: ListTile(
               leading: Icon(
                 Icons.info_outline,
                   color: Color(0xFFD7A81E)
               ),
               subtitle: Text(
                 'Note that your target plan will end at the maturity date and your funds will\nbe moved to your wallet automatically.',
                 textScaleFactor: 1,
                 textWidthBasis: TextWidthBasis.parent,
                 style: GoogleFonts.jost(
                   fontWeight: FontWeight.w300,
                   fontSize: 15,
                   color: Color(0xFFD7A81E)
                 ),
               ),
             ),
          ),
          YMargin(20),
          ReusableCard(
              title: "Turn on autosave",
              subtitle: "Velit tortor, pellentesque leo, comm is odo suspendisse diam.",
              leadingIcon: Image.asset(kGive),
              hasTrailingIcon: true,
              iconColor: Color(0xFFE9F8FF),
              onPressed: (){
                _openBottomSheetSubmit(context,
                    child: AutoSaveModal());
              }),
          YMargin(20),
          ReusableCard(
              title: "Turn on auto-remnders",
              subtitle: "Velit tortor, pellentesque leo, comm is odo suspendisse diam.",
              leadingIcon: Image.asset(kGive),
              hasTrailingIcon: true,
              iconColor: Color(0xFFE9F8FF),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AutoRenew())
                );
              }),
        ],
      ),
    );
  }
  Container _buildTopControl(BuildContext context) {
    return Container(
      height: 4,
      width: screenWidth(context, percent: 0.15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  _openBottomSheetSubmit(BuildContext context,
      {double? height =500,  required Widget child}) {
    return showBarModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      barrierColor: Colors.black38,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      topControl: _buildTopControl(context),
      builder: (context) => Container(
        height: height,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: screenWidth(context, percent: 0.1),
        ),
        child: child,
      ),
    );
  }
}

class AutoSaveModal extends StatefulWidget {
  const AutoSaveModal({Key? key}) : super(key: key);

  @override
  State<AutoSaveModal> createState() => _AutoSaveModalState();
}

class _AutoSaveModalState extends State<AutoSaveModal> {
  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
      backgroundcolor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Image.asset(
             kAutosave
           ),
           Text(
             'Would you like to set up auto-save',
             style: GoogleFonts.outfit(
               fontWeight: FontWeight.w500,
               fontSize: 20,
               color: Color(0xFF01061F),
             ),
           ),
           YMargin(10),
           Text(
             'By setting up auto-debit using your card, our\npayment partner will charge you a fee of 1.0%\ncapped at N1000 every time your card is auto-debited.',
             style: GoogleFonts.outfit(
               fontWeight: FontWeight.w300,
               fontSize: 14,
               color: Color(0xFF444E54),
             ),
           ),
           YMargin(30),
           DesignButton(
               title: 'Yes',
               textColor: Colors.white,
               fillColor: Color(0xFFD7A81E),
               onPressed: (){}),
           YMargin(MediaQuery.of(context).size.height*0.03),
           DesignButton(
               title: 'NO',
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

