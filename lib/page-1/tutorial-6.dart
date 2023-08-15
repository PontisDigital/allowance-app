import 'package:allowance/main.dart';
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
          // tutorial66Ab (7:288)
          padding: EdgeInsets.fromLTRB(0 * fem, 34 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff041e42),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // progresstutorialJGf (26:213)
                margin: EdgeInsets.fromLTRB(
                    117 * fem, 0 * fem, 117 * fem, 43 * fem),
                width: double.infinity,
                height: 18 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame37136DPd (I26:213;26:138)
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
                      // frame37139k8f (I26:213;26:139)
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
                      // frame37137gY7 (I26:213;26:140)
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
                      // frame37138Rkb (I26:213;26:141)
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
                      // frame37134Ay5 (I26:213;26:142)
                      width: 52 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff4b39ef),
                        borderRadius:
                            BorderRadius.circular(90.2483901978 * fem),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // stepfiveenjoyyourfreestuff6rj (7:291)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 158 * fem),
                constraints: BoxConstraints(
                  maxWidth: 329 * fem,
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
                      TextSpan(
                        text: 'Enjoy your free stuff.',
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
              TutButton(fem: fem, ffem: ffem, next: MyApp())
            ],
          ),
        ),
      ),
    );
  }
}
