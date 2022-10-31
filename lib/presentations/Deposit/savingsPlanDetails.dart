

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zimvest/presentations/Save/save_options.dart';
import 'package:zimvest/widgets/savingsCard.dart';
import '../../widgets/app_svg.dart';
import '../../widgets/design_back_button.dart';
import '../../widgets/design_button.dart';
import '../../widgets/design_scaffold.dart';
import '../../widgets/margin.dart';

class SavingDetails extends StatefulWidget {
  const SavingDetails({Key? key}) : super(key: key);

  @override
  State<SavingDetails> createState() => _SavingDetailsState();
}

class _SavingDetailsState extends State<SavingDetails> {
  bool widgetVisible = false ;
  bool itemWidgetVisible = true;
  bool isSwitched = false;

  void showWidget(){
    setState(() {
      widgetVisible = false ;
      itemWidgetVisible = true;
    });
  }

  void hideWidget(){
    setState(() {
      widgetVisible = true ;
      itemWidgetVisible = false;
    });
  }

  @override
  void initState(){
    showWidget();
    setState(() {
      isSwitched = true;
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            DesignBackButton(),
      YMargin(MediaQuery.of(context).size.height*0.03),
      Text(
          'Your saving plan',
          style: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          )
      ),
      YMargin(MediaQuery.of(context).size.height*0.05),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.1,
        color: Colors.white,
        child: SavingsCard(
          onPressed: (){},
          trailingIcon:false,
        )
      ),
            YMargin(20),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white
                )
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Text(
                      'Auto-Save',
                      style: GoogleFonts.outfit(
                       fontWeight: FontWeight.w400,
                        fontSize: 14,
                          color: Color(0xFFA5ADBC)
                      ),
                    ),
                    trailing:  Switch(
                      value: isSwitched,
                      onChanged: (value){
                        setState(() {
                          isSwitched = value;
                          if(isSwitched){
                            showWidget();
                          }
                          else {
                            hideWidget();
                          }
                        });

                      },
                      activeTrackColor:Color(0xFFD7A81E) ,
                      activeColor: Colors.white,
                    )
                  ),
                  Visibility(
                      visible: itemWidgetVisible,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Divider(),
                          ),
                          ListTile(
                              leading: Text(
                                'Amount',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFFA5ADBC)
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
                                'Frequency',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFFA5ADBC)
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Daily',
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
                                'Start date',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFFA5ADBC)
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'May 31, 2022',
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
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(),
                          ),
                          ListTile(
                              leading: Text(
                                'End date',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFFA5ADBC)
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'July 18, 2023',
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
                                'Funding Source',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFFA5ADBC)
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(
                                      kMasterCard
                                  )
                                ],
                              ),
                              trailing:Text(
                                '7283',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18
                                ),
                              )
                          ),
                        ],
                      )) ,



                ],
              ),
            ),
              YMargin(MediaQuery.of(context).size.height*0.05),
              DesignButton(
                  title: 'Save Changes',
                  textColor: Colors.white,
                  fillColor: Color(0xFFD7A81E),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SaveOptions())
                    );
                  })
      ]
        )
    );
  }
}
