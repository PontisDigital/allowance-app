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
      appBar: AppBar(
        leading: Icon(Icons.title),
        backgroundColor: Color(0xff041e42),
        centerTitle: true,
        title: Text(
          'hoya allowance',
          style: SafeGoogleFont(
            'Outfit',
            fontSize: 25 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.26 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                  // progresstutorialWh5 (26:195)
                  margin: EdgeInsets.fromLTRB(
                      83.5 * fem, 0 * fem, 83.5 * fem, 40 * fem),
                  width: double.infinity,
                  height: 18 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame37136pxf (I26:195;26:119)
                        width: 20 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius:
                              BorderRadius.circular(90.2483901978 * fem),
                        ),
                      ),
                      SizedBox(
                        width: 6 * fem,
                      ),
                      Container(
                        // frame371349zw (I26:195;26:120)
                        width: 52 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff4b39ef),
                          borderRadius:
                              BorderRadius.circular(90.2483901978 * fem),
                        ),
                      ),
                      SizedBox(
                        width: 6 * fem,
                      ),
                      Container(
                        // frame371375dh (I26:195;26:121)
                        width: 20 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius:
                              BorderRadius.circular(90.2483901978 * fem),
                        ),
                      ),
                      SizedBox(
                        width: 6 * fem,
                      ),
                      Container(
                        // frame371381nF (I26:195;26:122)
                        width: 20 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius:
                              BorderRadius.circular(90.2483901978 * fem),
                        ),
                      ),
                      SizedBox(
                        width: 6 * fem,
                      ),
                      Container(
                        // frame37139kUw (I26:195;26:134)
                        width: 20 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius:
                              BorderRadius.circular(90.2483901978 * fem),
                        ),
                      ),
                    ],
                  ),
                ),
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
                              'To use your allowance, click the allowance button when you are at our partners stores.',
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
                TutButton(fem: fem, ffem: ffem, next: Tut3(), replaceEntireQueue: false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

