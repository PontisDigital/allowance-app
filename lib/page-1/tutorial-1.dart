import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // tutorial1XTD (7:131)
        padding: EdgeInsets.fromLTRB(16*fem, 34*fem, 15.1*fem, 146.2*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hoyaallowanceEcX (7:133)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.9*fem, 46*fem),
              child: Text(
                'hoya allowance',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Outfit',
                  fontSize: 25*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.26*ffem/fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // progresstutorial8C7 (26:180)
              margin: EdgeInsets.fromLTRB(101*fem, 0*fem, 101.9*fem, 43*fem),
              width: double.infinity,
              height: 18*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37134F1q (I26:180;26:114)
                    width: 52*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff4b39ef),
                      borderRadius: BorderRadius.circular(90.2483901978*fem),
                    ),
                  ),
                  SizedBox(
                    width: 6*fem,
                  ),
                  Container(
                    // frame37136mVy (I26:180;26:115)
                    width: 20*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(90.2483901978*fem),
                    ),
                  ),
                  SizedBox(
                    width: 6*fem,
                  ),
                  Container(
                    // frame371377Jw (I26:180;26:116)
                    width: 20*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(90.2483901978*fem),
                    ),
                  ),
                  SizedBox(
                    width: 6*fem,
                  ),
                  Container(
                    // frame37138eJs (I26:180;26:117)
                    width: 20*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(90.2483901978*fem),
                    ),
                  ),
                  SizedBox(
                    width: 6*fem,
                  ),
                  Container(
                    // frame37139nR5 (I26:180;26:133)
                    width: 20*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(90.2483901978*fem),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // steponepartnerstoresshowuponyo (7:136)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.9*fem, 81*fem),
              constraints: BoxConstraints (
                maxWidth: 325*fem,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: SafeGoogleFont (
                    'Outfit',
                    fontSize: 36*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.26*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'Step One:\n',
                    ),
                    TextSpan(
                      text: 'Partner stores show up on your home page',
                      style: SafeGoogleFont (
                        'Outfit',
                        fontSize: 36*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.26*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // frame37165unX (7:153)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 89.3*fem),
              padding: EdgeInsets.fromLTRB(11*fem, 15*fem, 11*fem, 30*fem),
              width: double.infinity,
              height: 129.7*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(26.3999996185*fem),
                gradient: LinearGradient (
                  begin: Alignment(-0.952, 0.002),
                  end: Alignment(1.001, 0.002),
                  colors: <Color>[Color(0xffb4f2e1), Color(0xfff8b4b5)],
                  stops: <double>[0, 1],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37164jFm (7:154)
                    margin: EdgeInsets.fromLTRB(0*fem, 4.35*fem, 18*fem, 4.35*fem),
                    width: 199*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(26.3999996185*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // availableallowancee7q (7:155)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            'available allowance',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16.5*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3333333333*ffem/fem,
                              color: Color(0xff525354),
                            ),
                          ),
                        ),
                        Text(
                          // jf5 (7:156)
                          '\$27.43',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 59.4000015259*ffem,
                            fontWeight: FontWeight.w700,
                            height: 0.7618519237*ffem/fem,
                            letterSpacing: -0.5940000153*fem,
                            color: Color(0xff08090a),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // logofHq (19:178)
                    padding: EdgeInsets.fromLTRB(7.7*fem, 2.2*fem, 9.2*fem, 0.66*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(16.5*fem),
                    ),
                    child: Align(
                      // tile11nNT (19:180)
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 103*fem,
                        height: 81.84*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18.3919868469*fem),
                          child: Image.asset(
                            'assets/page-1/images/tile1-1-xBq.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // continuebuttonW3Z (19:189)
              margin: EdgeInsets.fromLTRB(65*fem, 0*fem, 65.9*fem, 0*fem),
              width: double.infinity,
              height: 42.8*fem,
              decoration: BoxDecoration (
                color: Color(0xff003da5),
                borderRadius: BorderRadius.circular(30.0000019073*fem),
              ),
              child: Center(
                child: Text(
                  'continue',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Outfit',
                    fontSize: 30.0000019073*ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.26*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}
