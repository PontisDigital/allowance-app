import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';

class AccDeleteConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // settings3donevNj (301:1019)
        padding: EdgeInsets.fromLTRB(13*fem, 34*fem, 13*fem, 34*fem),
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Container(
          // frame37230eJj (301:1020)
          width: double.infinity,
          height: 734*fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // hoyaallowanceBpT (301:1021)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
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
                // frame37228Vq9 (301:1023)
                padding: EdgeInsets.fromLTRB(12*fem, 9*fem, 13.2*fem, 9*fem),
                width: double.infinity,
                height: 680*fem,
                decoration: BoxDecoration (
                  color: Color(0xff09367b),
                  borderRadius: BorderRadius.circular(25*fem),
                ),
                child: Container(
                  // frame37227cum (301:1025)
                  width: double.infinity,
                  height: 452.7*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group18ZKD (301:1027)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 117*fem),
                        width: double.infinity,
                        height: 67.1*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(20.8999977112*fem),
                        ),
                        child: Container(
                          // sampleusertMV (301:1028)
                          padding: EdgeInsets.fromLTRB(5.5*fem, 3.3*fem, 16.4*fem, 3.3*fem),
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff446da4),
                            borderRadius: BorderRadius.circular(20.8999977112*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupdcaboUT (CFf28DcotywCRt6ksydcAB)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.4*fem, 0*fem),
                                width: 60.5*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0x999747ff),
                                  borderRadius: BorderRadius.circular(30.25*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'JB3',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Outfit',
                                      fontSize: 26.4000015259*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.26*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // jackthebulldog2023rhd (301:1031)
                                margin: EdgeInsets.fromLTRB(0*fem, 2.1*fem, 0*fem, 0*fem),
                                child: Text(
                                  '@jackthebulldog2023',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Outfit',
                                    fontSize: 26.4000015259*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.26*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // frame37226xkf (301:1032)
                        margin: EdgeInsets.fromLTRB(36.5*fem, 0*fem, 31.3*fem, 0*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // areyousureyouwanttodeleteyoura (301:1033)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 62*fem),
                              constraints: BoxConstraints (
                                maxWidth: 271*fem,
                              ),
                              child: Text(
                                'Are you sure you want to delete your account?',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Rubik',
                                  fontSize: 30*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.185*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              // frame37225P5H (301:1034)
                              margin: EdgeInsets.fromLTRB(54.5*fem, 0*fem, 54.5*fem, 0*fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group53itF (301:1035)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 40.8*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(12*fem),
                                        ),
                                        child: Container(
                                          // group50pgP (301:1036)
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(12*fem),
                                          ),
                                          child: Container(
                                            // group49aQf (301:1037)
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xffdd1d1d),
                                              borderRadius: BorderRadius.circular(12*fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Yes, Delete',
                                                style: SafeGoogleFont (
                                                  'Rubik',
                                                  fontSize: 21.6000003815*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.185*ffem/fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    // group54GHV (301:1040)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 40.8*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(12*fem),
                                      ),
                                      child: Container(
                                        // group50oHR (301:1041)
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(12*fem),
                                        ),
                                        child: Container(
                                          // group49Mpj (301:1042)
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration (
                                            color: Color(0xff29a553),
                                            borderRadius: BorderRadius.circular(12*fem),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'No',
                                              style: SafeGoogleFont (
                                                'Rubik',
                                                fontSize: 21.6000003815*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.185*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
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
                    ],
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
