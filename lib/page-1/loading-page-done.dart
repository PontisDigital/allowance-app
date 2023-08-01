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
        // loadingpagedoneeTh (301:827)
        padding: EdgeInsets.fromLTRB(71*fem, 339*fem, 71*fem, 339*fem),
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Container(
          // frame37160U5M (301:828)
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // allowanceNwR (301:829)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                child: Text(
                  'allowance.',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Outfit',
                    fontSize: 50*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.26*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // tapanywhereECw (301:830)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                child: Text(
                  'tap anywhere',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'PT Sans Caption',
                    fontSize: 15*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2925*ffem/fem,
                    color: Color(0x87ffffff),
                  ),
                ),
              ),
              Container(
                // jackthebulldogw7M (301:831)
                width: 70*fem,
                height: 70*fem,
                child: Image.asset(
                  'assets/page-1/images/jack-the-bulldog.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}