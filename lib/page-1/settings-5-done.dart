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
        // settings5donecVV (301:1111)
        padding: EdgeInsets.fromLTRB(13*fem, 34*fem, 13*fem, 34*fem),
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Container(
          // frame37236LAb (301:1112)
          width: double.infinity,
          height: 733*fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // hoyaallowance4cP (301:1113)
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
                // frame37234mFu (301:1115)
                padding: EdgeInsets.fromLTRB(12*fem, 10*fem, 13.2*fem, 10*fem),
                width: double.infinity,
                height: 680*fem,
                decoration: BoxDecoration (
                  color: Color(0xff09367b),
                  borderRadius: BorderRadius.circular(25*fem),
                ),
                child: Container(
                  // frame37233HV9 (301:1117)
                  width: double.infinity,
                  height: 388.1*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group18dJ7 (301:1119)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 72*fem),
                        width: double.infinity,
                        height: 67.1*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(20.8999977112*fem),
                        ),
                        child: Container(
                          // sampleuserktX (301:1120)
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
                                // autogrouphn23Gby (CFf3o614vfS7U2ThXnHn23)
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
                                // jackthebulldog2023Y3h (301:1123)
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
                        // frame37232ecX (301:1124)
                        margin: EdgeInsets.fromLTRB(22*fem, 0*fem, 39.8*fem, 0*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame37231BcT (301:1125)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // passwordentrytwo81u (301:1126)
                                    width: double.infinity,
                                    height: 60*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // oldpassword5C3 (301:1127)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 123*fem,
                                              height: 26*fem,
                                              child: Text(
                                                'Old Password',
                                                style: SafeGoogleFont (
                                                  'Outfit',
                                                  fontSize: 20*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26*ffem/fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // frame37148YrK (301:1128)
                                          left: 0*fem,
                                          top: 25*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 277*fem,
                                              height: 35*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                  color: Color(0xff63666a),
                                                ),
                                                child: TextField(
                                                  obscureText: true,
                                                  decoration: InputDecoration (
                                                    border: InputBorder.none,
                                                    focusedBorder: InputBorder.none,
                                                    enabledBorder: InputBorder.none,
                                                    errorBorder: InputBorder.none,
                                                    disabledBorder: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(5*fem, 5*fem, 5*fem, 4*fem),
                                                    hintText: '*************',
                                                    hintStyle: TextStyle(color:Color(0x99ffffff)),
                                                  ),
                                                  style: SafeGoogleFont (
                                                    'Outfit',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.26*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9*fem,
                                  ),
                                  Container(
                                    // passwordentrytwow7m (301:1130)
                                    width: double.infinity,
                                    height: 60*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // newpassword5zf (301:1131)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 130*fem,
                                              height: 26*fem,
                                              child: Text(
                                                'New Password',
                                                style: SafeGoogleFont (
                                                  'Outfit',
                                                  fontSize: 20*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26*ffem/fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // frame37148nPH (301:1132)
                                          left: 0*fem,
                                          top: 25*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 277*fem,
                                              height: 35*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                  color: Color(0xff63666a),
                                                ),
                                                child: TextField(
                                                  obscureText: true,
                                                  decoration: InputDecoration (
                                                    border: InputBorder.none,
                                                    focusedBorder: InputBorder.none,
                                                    enabledBorder: InputBorder.none,
                                                    errorBorder: InputBorder.none,
                                                    disabledBorder: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(5*fem, 5*fem, 5*fem, 4*fem),
                                                    hintText: '*************',
                                                    hintStyle: TextStyle(color:Color(0x99ffffff)),
                                                  ),
                                                  style: SafeGoogleFont (
                                                    'Outfit',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.26*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9*fem,
                                  ),
                                  Container(
                                    // passwordentryoneyCs (301:1134)
                                    width: double.infinity,
                                    height: 60*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // confirmpasswordigF (301:1135)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 163*fem,
                                              height: 26*fem,
                                              child: Text(
                                                'Confirm Password',
                                                style: SafeGoogleFont (
                                                  'Outfit',
                                                  fontSize: 20*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26*ffem/fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // frame371492B9 (301:1136)
                                          left: 0*fem,
                                          top: 25*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 277*fem,
                                              height: 35*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                  color: Color(0xff63666a),
                                                ),
                                                child: TextField(
                                                  obscureText: true,
                                                  decoration: InputDecoration (
                                                    border: InputBorder.none,
                                                    focusedBorder: InputBorder.none,
                                                    enabledBorder: InputBorder.none,
                                                    errorBorder: InputBorder.none,
                                                    disabledBorder: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(5*fem, 5*fem, 5*fem, 4*fem),
                                                    hintText: '*************',
                                                    hintStyle: TextStyle(color:Color(0x99ffffff)),
                                                  ),
                                                  style: SafeGoogleFont (
                                                    'Outfit',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.26*ffem/fem,
                                                    color: Color(0xff000000),
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
                            Container(
                              // continuebuttonTGT (301:1138)
                              margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 32*fem, 0*fem),
                              width: double.infinity,
                              height: 36*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff4b39ef),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'done',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Outfit',
                                    fontSize: 25*ffem,
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