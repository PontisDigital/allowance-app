import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';

class DeleteProfileDataConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // settings4done6t7 (301:1048)
        padding: EdgeInsets.fromLTRB(13*fem, 34*fem, 13*fem, 34*fem),
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Container(
          // frame372302Fy (301:1049)
          width: double.infinity,
          height: 734*fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // hoyaallowancea2b (301:1050)
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
                // frame37228Gw1 (301:1052)
                padding: EdgeInsets.fromLTRB(12*fem, 9*fem, 13.2*fem, 9*fem),
                width: double.infinity,
                height: 680*fem,
                decoration: BoxDecoration (
                  color: Color(0xff09367b),
                  borderRadius: BorderRadius.circular(25*fem),
                ),
                child: Container(
                  // frame37227Q1d (301:1054)
                  width: double.infinity,
                  height: 416.7*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group189E7 (301:1056)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 117*fem),
                        width: double.infinity,
                        height: 67.1*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(20.8999977112*fem),
                        ),
                        child: Container(
                          // sampleuserGpX (301:1057)
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
                                // autogroupnal7NsZ (CFf2XHnhW6MHnEwdbhNAL7)
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
                                // jackthebulldog2023doV (301:1060)
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
                        // frame37226Y9m (301:1061)
                        margin: EdgeInsets.fromLTRB(36.5*fem, 0*fem, 31.3*fem, 0*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // areyousureyouwanttodeleteyourd (301:1062)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                              constraints: BoxConstraints (
                                maxWidth: 271*fem,
                              ),
                              child: Text(
                                'Are you sure you want to delete your data?',
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
                              // frame372259QT (301:1063)
                              margin: EdgeInsets.fromLTRB(54.5*fem, 0*fem, 54.5*fem, 0*fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group53fdh (301:1064)
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
                                          // group50AqM (301:1065)
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(12*fem),
                                          ),
                                          child: Container(
                                            // group49irs (301:1066)
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
                                    // group54pQ7 (301:1069)
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
                                        // group50Yb1 (301:1070)
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(12*fem),
                                        ),
                                        child: Container(
                                          // group49uAf (301:1071)
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
