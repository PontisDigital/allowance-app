import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // settings1donevKh (301:947)
        padding: EdgeInsets.fromLTRB(13*fem, 34*fem, 13*fem, 77*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hoyaallowancedE7 (301:948)
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
              // frame37218uSX (301:950)
              padding: EdgeInsets.fromLTRB(12*fem, 10*fem, 13.2*fem, 10*fem),
              width: double.infinity,
              height: 680*fem,
              decoration: BoxDecoration (
                color: Color(0xff09367b),
                borderRadius: BorderRadius.circular(25*fem),
              ),
              child: Container(
                // frame37217crj (301:952)
                width: double.infinity,
                height: 337.1*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // group18xvb (301:954)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                      width: double.infinity,
                      height: 67.1*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20.8999977112*fem),
                      ),
                      child: Container(
                        // sampleuserHhy (301:955)
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
                              // autogroupmc6kPm1 (CFezq67Kw51TFVTUBBmc6K)
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
                              // jackthebulldog2023SjH (301:958)
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
                      // frame37216wg3 (301:960)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.8*fem, 0*fem),
                      width: 330*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // accountsettingsGyD (301:961)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                            child: Text(
                              'Account Settings',
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
                            // frame37215P2F (301:962)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // autogroupsqzfKRh (CFf16AWYJ8N1eDZ2Gfsqzf)
                                  padding: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 28*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // frame31FKM (301:963)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // profiledatakX1 (301:964)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 208*fem, 0*fem),
                                                  child: Text(
                                                    'Profile Data',
                                                    style: SafeGoogleFont (
                                                      'Rubik',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.185*ffem/fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // group14fdy (301:965)
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/group-14.png',
                                                    width: 24*fem,
                                                    height: 24*fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        // frame30bnX (301:968)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // changepasswordXw5 (301:969)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 155*fem, 0*fem),
                                                child: Text(
                                                  'Change password',
                                                  style: SafeGoogleFont (
                                                    'Rubik',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.185*ffem/fem,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group15F6P (301:970)
                                                width: 24*fem,
                                                height: 24*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-15.png',
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame37213PTV (301:974)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 29*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // pushnotificationsUjq (301:975)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 123*fem, 0*fem),
                                            child: Text(
                                              'Push notifications',
                                              style: SafeGoogleFont (
                                                'Rubik',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.185*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group20nEj (301:976)
                                            padding: EdgeInsets.fromLTRB(30*fem, 3*fem, 4*fem, 4*fem),
                                            width: 56*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff4b39ef),
                                              borderRadius: BorderRadius.circular(20*fem),
                                            ),
                                            child: Align(
                                              // ellipse2i8P (301:978)
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                width: double.infinity,
                                                height: 22*fem,
                                                child: Container(
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(11*fem),
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame372143Af (301:979)
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 29*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // darkmodek55 (301:981)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 182*fem, 0*fem),
                                            child: Text(
                                              'Dark mode',
                                              style: SafeGoogleFont (
                                                'Rubik',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.185*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group21rto (301:982)
                                            padding: EdgeInsets.fromLTRB(30*fem, 3*fem, 4*fem, 4*fem),
                                            width: 56*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff4b39ef),
                                              borderRadius: BorderRadius.circular(20*fem),
                                            ),
                                            child: Align(
                                              // ellipse2bLb (301:984)
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                width: double.infinity,
                                                height: 22*fem,
                                                child: Container(
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(11*fem),
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
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
          );
  }
}
