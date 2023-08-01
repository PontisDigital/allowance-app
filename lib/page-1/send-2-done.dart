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
        // send2doneoef (301:1193)
        padding: EdgeInsets.fromLTRB(25.6*fem, 34*fem, 25.6*fem, 361.5*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hoyaallowanceiFq (301:1194)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
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
              // frame37207DCb (301:1196)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37204kyD (301:1197)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 49*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // enteramountJUw (301:1198)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          child: Text(
                            'enter amount',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Outfit',
                              fontSize: 40*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.26*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // group181u9 (301:1200)
                          width: double.infinity,
                          height: 67.1*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20.8999977112*fem),
                          ),
                          child: Container(
                            // sampleuserMi7 (301:1201)
                            padding: EdgeInsets.fromLTRB(5.5*fem, 3.3*fem, 15.4*fem, 3.3*fem),
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
                                  // autogroupjrmu4cX (CFf6FrEXKBvARefurPjrmu)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.4*fem, 0*fem),
                                  width: 60.5*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0x999747ff),
                                    borderRadius: BorderRadius.circular(30.25*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'EB3',
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
                                  // evanbirnsthehippo37qh (301:1204)
                                  margin: EdgeInsets.fromLTRB(0*fem, 2.1*fem, 0*fem, 0*fem),
                                  child: Text(
                                    '@evanbirnsthehippo3',
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
                      ],
                    ),
                  ),
                  Container(
                    // frame37206pEK (301:1205)
                    margin: EdgeInsets.fromLTRB(39.9*fem, 0*fem, 39.9*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame37205js5 (301:1206)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: double.infinity,
                          height: 139*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // availableGc7 (301:1207)
                                left: 0*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 259*fem,
                                    height: 42*fem,
                                    child: Text(
                                      '\$30.00 available',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Outfit',
                                        fontSize: 33*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.26*ffem/fem,
                                        color: Color(0x66ffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // m35 (301:1208)
                                left: 5*fem,
                                top: 25*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 249*fem,
                                    height: 114*fem,
                                    child: Container(
                                      child: TextField(
                                        decoration: InputDecoration (
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // sendbuttonesZ (301:1210)
                          margin: EdgeInsets.fromLTRB(43.1*fem, 0*fem, 43.1*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(27.6*fem, 7.2*fem, 27.2*fem, 7.2*fem),
                              width: double.infinity,
                              height: 98.4*fem,
                              decoration: BoxDecoration (
                                color: Color(0x3f4b39ef),
                                borderRadius: BorderRadius.circular(18.3050861359*fem),
                                border: Border (
                                ),
                              ),
                              child: Text(
                                'send',
                                style: SafeGoogleFont (
                                  'Outfit',
                                  fontSize: 54.0000038147*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.26*ffem/fem,
                                  color: Color(0xffffffff),
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
          );
  }
}