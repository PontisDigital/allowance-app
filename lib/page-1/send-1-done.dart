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
        // send1done4Ns (301:1216)
        padding: EdgeInsets.fromLTRB(33*fem, 34*fem, 33*fem, 95*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hoyaallowanceyVq (301:1217)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
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
              // frame37202gf9 (301:1219)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37140qnw (301:1220)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                    padding: EdgeInsets.fromLTRB(7*fem, 1*fem, 7*fem, 0*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xcc446da3),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Align(
                      // searchxMm (301:1221)
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 286*fem, 0*fem),
                          decoration: BoxDecoration (
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/vector.png',
                              ),
                            ),
                          ),
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
                  Container(
                    // frame37201QDm (301:1224)
                    padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 9.08*fem, 8*fem),
                    width: double.infinity,
                    height: 636*fem,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/frame-37141.png',
                        ),
                      ),
                    ),
                    child: Container(
                      // group18K5q (301:1227)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 559.61*fem),
                      width: double.infinity,
                      height: 60.39*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(18.8099956512*fem),
                      ),
                      child: Container(
                        // sampleuserEib (301:1228)
                        padding: EdgeInsets.fromLTRB(4.95*fem, 2.97*fem, 13.56*fem, 2.97*fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: Color(0xff446da4),
                          borderRadius: BorderRadius.circular(18.8099956512*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup5gkq8oy (CFf6a6D8TgefN4gs2Z5GKq)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.96*fem, 0*fem),
                              width: 54.45*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0x999747ff),
                                borderRadius: BorderRadius.circular(27.2250003815*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'EB3',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Outfit',
                                    fontSize: 23.7599983215*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.26*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // evanbirnsthehippo3PE7 (301:1231)
                              margin: EdgeInsets.fromLTRB(0*fem, 1.29*fem, 0*fem, 0*fem),
                              child: Text(
                                '@evanbirnsthehippo3',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Outfit',
                                  fontSize: 23.7599983215*ffem,
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