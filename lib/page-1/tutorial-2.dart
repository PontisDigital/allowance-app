import 'package:allowance/page-1/tutorial-5.dart';
import 'package:allowance/tut_button.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Tut2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // tutorial2LPH (7:163)
          padding: EdgeInsets.fromLTRB(
              33.5 * fem, 34 * fem, 33.5 * fem, 146.2 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff041e42),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // steptwotouseyourallowanceclick (7:166)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 29 * fem),
                constraints: BoxConstraints(
                  maxWidth: 323 * fem,
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
                        text: 'Step Two:\n',
                      ),
                      TextSpan(
                        text:
                            'To use your allowance, click the "allowance" button when you are at checkout.',
                        style: SafeGoogleFont(
                          'Outfit',
                          fontSize: 36 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.26 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // sendbutton7cK (19:182)
                margin: EdgeInsets.fromLTRB(
                    74.5 * fem, 0 * fem, 74.26 * fem, 83.78 * fem),
                width: double.infinity,
                height: 99.22 * fem,
                decoration: BoxDecoration(
                  color: Color(0x7f1900ff),
                  borderRadius: BorderRadius.circular(18.4576263428 * fem),
                  border: Border(),
                ),
                child: Center(
                  child: Text(
                    'allowance',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Outfit',
                      fontSize: 30 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.26 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

