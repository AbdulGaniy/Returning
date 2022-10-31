import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zimvest/presentations/Deposit/savingsPlan.dart';
import 'package:zimvest/widgets/app_img.dart';
import 'package:zimvest/widgets/design_button.dart';
import 'package:zimvest/widgets/design_scaffold.dart';
import 'package:zimvest/widgets/margin.dart';

class CompletedWithdrawal extends StatelessWidget {
  const CompletedWithdrawal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            YMargin(MediaQuery.of(context).size.height*0.25),
            Image.asset(
              kMoney
            ),
            YMargin(MediaQuery.of(context).size.height*0.06),
            Text(
              'Withdraw Completed',
              style:GoogleFonts.outfit(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xFF01061F),
              ),

            ),
            YMargin(MediaQuery.of(context).size.height*0.05),
            Text(
              'Your money has been sent to your Zimvest\nWallet',
              style:GoogleFonts.outfit(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6F7278),
              ),
            textAlign: TextAlign.center,
            ),
            YMargin(MediaQuery.of(context).size.height*0.1),
            DesignButton(
                title: 'View Wallet',
                textColor: Colors.white,
                fillColor: Color(0xFFD7A81E),
                onPressed: (){}),
            YMargin(MediaQuery.of(context).size.height*0.03),
            DesignButton(
                title: 'Go Home',
                hasBoarder: true,
                borderColor:Color(0xFFD7A81E),
                textColor: Color(0xFFD7A81E),
                fillColor: Color(0xFFFFFDF8),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SavingsPlan())
                  );
                })
          ],
        ),
      ),
    );
  }
}
