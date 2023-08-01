import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // pay1doneczB (301:1180)
        padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 178*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupardvXrF (CFf5wGw92riw7asez4ArdV)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 129*fem),
              width: double.infinity,
              height: 75*fem,
              child: Center(
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
            ),
            Container(
              // frame37211oom (301:1183)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // thisonesonusshowthistothecashi (301:1184)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    constraints: BoxConstraints (
                      maxWidth: 350*fem,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'Outfit',
                          fontSize: 40*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2600000381*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'This one’s on us.\n',
                            style: SafeGoogleFont (
                              'Outfit',
                              fontSize: 48*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.26*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text: 'Show this to the cashier.',
                            style: SafeGoogleFont (
                              'Outfit',
                              fontSize: 30*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.26*ffem/fem,
                              color: Color(0x99ffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // frame37209fsu (301:1186)
                    padding: EdgeInsets.fromLTRB(13*fem, 12*fem, 12*fem, 13*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffff00b7),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Center(
                      // rectangle10BrF (301:1188)
                      child: SizedBox(
                        width: 325*fem,
                        height: 325*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-10-QRd.png',
                          fit: BoxFit.cover,
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
          );
  }
}