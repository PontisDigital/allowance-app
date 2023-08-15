import 'package:allowance/page-1/tutorial-4.dart';
import 'package:allowance/tut_button.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Tut3 extends StatelessWidget {
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
      body: Container(
        width: double.infinity,
        child: Container(
          // tutorial5eHM (7:270)
          padding: EdgeInsets.fromLTRB(55 * fem, 34 * fem, 55 * fem, 146.2 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff041e42),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // progresstutorialTkb (26:201)
                margin:
                    EdgeInsets.fromLTRB(62 * fem, 0 * fem, 62 * fem, 43 * fem),
                width: double.infinity,
                height: 18 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame37136P8T (I26:201;26:124)
                      width: 20 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(90.2483901978 * fem),
                      ),
                    ),
                    SizedBox(
                      width: 6 * fem,
                    ),
                    Container(
                      // frame37137JFR (I26:201;26:125)
                      width: 20 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(90.2483901978 * fem),
                      ),
                    ),
                    SizedBox(
                      width: 6 * fem,
                    ),
                    Container(
                      // frame37134pjZ (I26:201;26:126)
                      width: 52 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff4b39ef),
                        borderRadius: BorderRadius.circular(90.2483901978 * fem),
                      ),
                    ),
                    SizedBox(
                      width: 6 * fem,
                    ),
                    Container(
                      // frame37138MzP (I26:201;26:127)
                      width: 20 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(90.2483901978 * fem),
                      ),
                    ),
                    SizedBox(
                      width: 6 * fem,
                    ),
                    Container(
                      // frame37139Jej (I26:201;26:135)
                      width: 20 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(90.2483901978 * fem),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // stepthreeshowqrcodetocashier48 (7:273)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 23 * fem),
                constraints: BoxConstraints(
                  maxWidth: 273 * fem,
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
                        text: 'Step Three:\n',
                      ),
                      TextSpan(
                        text: 'Show QR code to Cashier.',
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
                // frame37209yuH (7:285)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 42 * fem),
                padding: EdgeInsets.fromLTRB(
                    10.4 * fem, 9.6 * fem, 9.6 * fem, 10.4 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffff00b7),
                  borderRadius: BorderRadius.circular(8 * fem),
                ),
                child: Center(
                  // rectangle10HQB (7:287)
                  child: SizedBox(
                    width: 260 * fem,
                    height: 260 * fem,
                    child: Image.asset(
                      'assets/page-1/images/rectangle-10.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              TutButton(fem: fem, ffem: ffem, next: Tut4())
            ],
          ),
        ),
      ),
    );
  }
}
