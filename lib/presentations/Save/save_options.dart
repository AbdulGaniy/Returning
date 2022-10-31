import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zimvest/presentations/Save/saving_plan_options.dart';
import 'package:zimvest/widgets/design_scaffold.dart';
import 'package:zimvest/widgets/reusableCard.dart';

import '../../widgets/app_img.dart';
import '../../widgets/design_back_button.dart';
import '../../widgets/margin.dart';

class SaveOptions extends StatelessWidget {
  const SaveOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          DesignBackButton(),
      YMargin(MediaQuery.of(context).size.height*0.03),
      Text(
          'What would you like to do\ntoday?',
          style: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          )
      ),
            YMargin(20),
            ReusableCard(
                title: "Stash away some cash",
                subtitle: "Earn 8.5% p.a.",
                leadingIcon: Image.asset(
                  kStash
                ),
                hasTrailingIcon: false,
              iconColor: Color(0xFFCCF0FF),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TargetSavings())
                );
              },),
            YMargin(20),
            ReusableCard(
              title: "Stash towards a goal",
              subtitle: "Earn 8.5% p.a.",
              leadingIcon: Image.asset(
                  kTarget
              ),
              hasTrailingIcon: false,
              iconColor: Color(0xFFDFE6FF),
              onPressed: () {},),
            YMargin(20),
            ReusableCard(
              title: "Lock away my money",
              subtitle: "Earn 11% p.a.",
              leadingIcon: Image.asset(
                  kLock
              ),
              hasTrailingIcon: false,
              iconColor: Color(0xFFFFE0D7),
              onPressed: () {},),
            YMargin(20),
            ReusableCard(
              title: "Join a savings group",
              subtitle: "Earn 8.5% p.a.",
              leadingIcon: Image.asset(
                  kGroup
              ),
              hasTrailingIcon: false,
              iconColor: Color(0xFFDCFFC7),
              onPressed: () {},),
            YMargin(20),
            ReusableCard(
              title: "Save for my Kids",
              subtitle: "Earn 8.5% p.a.",
              leadingIcon: Image.asset(
                  kSave
              ),
              hasTrailingIcon: false,
              iconColor: Color(0xFFFFDCB0),
              onPressed: () {},)



      ]
      ),

    );
  }
}
