import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_tooltip/super_tooltip.dart';
import 'package:zimvest/presentations/Deposit/savingsPlanDetails.dart';
import 'package:zimvest/widgets/app_img.dart';
import 'package:zimvest/widgets/design_button.dart';
import 'package:zimvest/widgets/design_scaffold.dart';
import 'package:zimvest/widgets/reusableCard.dart';
import 'package:zimvest/widgets/savingsCard.dart';

import '../../widgets/app_svg.dart';
import '../../widgets/design_back_button.dart';
import '../../widgets/margin.dart';

class SavingsPlan extends StatefulWidget {
  const SavingsPlan({Key? key}) : super(key: key);

  @override
  State<SavingsPlan> createState() => _SavingsPlanState();
}

class _SavingsPlanState extends State<SavingsPlan> {


  SuperTooltip? tooltip;
  Future<bool> _willPopCallback() async {
    if (tooltip!.isOpen) {
      tooltip!.close();
      return false;
    }
    return true;
  }
  void onTap() {
    if (tooltip != null && tooltip!.isOpen) {
      tooltip!.close();
      return;
    }
    var renderBox = context.findRenderObject() as RenderBox;
    final overlay = Overlay.of(context)!.context
        .findRenderObject() as RenderBox?;

    var targetGlobalCenter = renderBox
        .localToGlobal(renderBox.size.center(Offset.zero), ancestor: overlay);

    // We create the tooltip on the first use
    tooltip = SuperTooltip(
      maxWidth: MediaQuery.of(context).size.width*0.7,
      maxHeight: MediaQuery.of(context).size.height*0.5,
      popupDirection: TooltipDirection.up,
      arrowTipDistance: 80.0,
      arrowBaseWidth: 100.0,
      arrowLength: 0.0,
      borderWidth: 1.0,

      hasShadow: false,
      // touchThrougArea: Rect.fromLTWH(targetGlobalCenter.dx - 100,
      //     targetGlobalCenter.dy - 100, 200.0, 160.0),
      touchThroughAreaShape: ClipAreaShape.rectangle,
      content:  Material(
        color: Colors.white,
          child: Text(
            "We encourage you to save for at least 3 months therefore you will be charged 15% on your accrued interest if you withdraw before 3 months from your initial start date. ",
            softWrap: true,
            style: GoogleFonts.outfit(
              fontSize:12,
              fontWeight: FontWeight.w300,
              color: Color(0xFF444E54)
            ),
          ),
         ),
    );

    tooltip!.show(context);
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
            YMargin(MediaQuery.of(context).size.height*0.1),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.1,
              color: Colors.white,
              child: SavingsCard(
                trailingIcon: true,
                onPressed: () => onTap(),
              )
            ),
            YMargin(MediaQuery.of(context).size.height*0.03),
            ReusableCard(
                title: 'Turn on Autosave',
                subtitle: 'Velit tortor, pellentesque leo, comm is odo suspendisse diam.',
                leadingIcon: Image.asset(
                  kGive
                ),
                hasTrailingIcon: true,
              iconColor: Color(0xFFECFBEC),
              onPressed: () { },),
            YMargin(MediaQuery.of(context).size.height*0.35),
            DesignButton(
                title: 'Save Changes',
                textColor: Colors.white,
                fillColor: Color(0xFFD7A81E),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SavingDetails())
                  );
                })

          ],
        ));
  }
}

