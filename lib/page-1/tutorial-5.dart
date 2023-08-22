import 'package:allowance/tut_button.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Tut5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // tutorial4eJj (7:241)
          padding:
              EdgeInsets.fromLTRB(19 * fem, 34 * fem, 19.08 * fem, 146.2 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff041e42),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // stepfourtorechargeyourallowanc (7:261)
                margin:
                    EdgeInsets.fromLTRB(0.08 * fem, 0 * fem, 0 * fem, 19 * fem),
                constraints: BoxConstraints(
                  maxWidth: 321 * fem,
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: SafeGoogleFont(
                      'Outfit',
                      fontSize: 36 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.26 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                    children: [
                      TextSpan(
                        text: 'Step Five:\n',
                      ),
					  TextSpan(style: SafeGoogleFont('Outfit', fontWeight: FontWeight.w400,fontSize: 24 * ffem), text: 'Even when you can\'t spend your allowance, you '),
					  TextSpan(style: SafeGoogleFont('Outfit', fontWeight: FontWeight.w700,fontSize: 24 * ffem), text: 'must scan your QR code '),
					  TextSpan(style: SafeGoogleFont('Outfit', fontWeight: FontWeight.w400,fontSize: 24 * ffem), text: 'in order to qualify for the next round.'),
                    ],
                  ),
                ),
              ),
              Container(
                // frame37245Vvw (19:193)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 21.43 * fem),
                width: double.infinity,
                height: 55.57 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff09367b),
                  borderRadius: BorderRadius.circular(9.2609996796 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // helpcenter1PV (19:194)
                      left: 0 * fem,
                      top: 4.6304931641 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 46.31 * fem,
                          height: 46.31 * fem,
                          child: Image.asset(
                            'assets/page-1/images/helpcenter.png',
                            width: 46.31 * fem,
                            height: 46.31 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // scanyourqrcodeeverytimeyoushop (19:195)
                      left: 46.3049316406 * fem,
                      top: 4.6304931641 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 302 * fem,
                          height: 45 * fem,
                          child: Text(
                            'Scan your QR code every time you shop to recharge your allowance.',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 18.5219993591 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
