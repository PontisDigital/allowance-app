import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // settings2doneVCK (301:988)
        padding: EdgeInsets.fromLTRB(13*fem, 34*fem, 13*fem, 34*fem),
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Container(
          // frame37224zum (301:989)
          width: double.infinity,
          height: 733*fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // hoyaallowancevoR (301:990)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21*fem),
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
                // frame37222RVH (301:992)
                padding: EdgeInsets.fromLTRB(12*fem, 10*fem, 13.2*fem, 10*fem),
                width: double.infinity,
                height: 680*fem,
                decoration: BoxDecoration (
                  color: Color(0xff09367b),
                  borderRadius: BorderRadius.circular(25*fem),
                ),
                child: Container(
                  // frame37221wTd (301:994)
                  width: double.infinity,
                  height: 232.1*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // group18UiT (301:996)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                        width: double.infinity,
                        height: 67.1*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(20.8999977112*fem),
                        ),
                        child: Container(
                          // sampleuserokj (301:997)
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
                                // autogroupch9h7mR (CFf1fKDyEmDhnXmshECh9h)
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
                                // jackthebulldog2023yHq (301:1000)
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
                        // frame37220se7 (301:1001)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.3*fem, 0*fem),
                        width: 333*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // profiledatabKD (301:1002)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                              child: Text(
                                'Profile Data',
                                style: SafeGoogleFont (
                                  'Rubik',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.185*ffem/fem,
                                  color: Color(0xffadadad),
                                ),
                              ),
                            ),
                            Container(
                              // frame5272f (301:1003)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                              width: double.infinity,
                              height: 34*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // deleteprofiledataDbV (301:1005)
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 43*fem, 0*fem),
                                    child: Text(
                                      'Delete Profile Data',
                                      style: SafeGoogleFont (
                                        'Rubik',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.185*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    // group51KeX (301:1006)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 135*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffdd1d1d),
                                        borderRadius: BorderRadius.circular(10*fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Delete',
                                          style: SafeGoogleFont (
                                            'Rubik',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.185*ffem/fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame53nHD (301:1009)
                              width: double.infinity,
                              height: 34*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // deleteaccountvuD (301:1011)
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 68*fem, 0*fem),
                                    child: Text(
                                      'Delete Account',
                                      style: SafeGoogleFont (
                                        'Rubik',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.185*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    // group50Scf (301:1012)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 135*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(10*fem),
                                      ),
                                      child: Container(
                                        // group49NFR (301:1013)
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xffdd1d1d),
                                          borderRadius: BorderRadius.circular(10*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Delete',
                                            style: SafeGoogleFont (
                                              'Rubik',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.185*ffem/fem,
                                              color: Color(0xffffffff),
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
