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
        // tutorial66Ab (7:288)
        padding: EdgeInsets.fromLTRB(0*fem, 34*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hoyaallowancezmm (7:289)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 46*fem),
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
              // progresstutorialJGf (26:213)
              margin: EdgeInsets.fromLTRB(117*fem, 0*fem, 117*fem, 43*fem),
              width: double.infinity,
              height: 18*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37136DPd (I26:213;26:138)
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
                    // frame37139k8f (I26:213;26:139)
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
                    // frame37137gY7 (I26:213;26:140)
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
                    // frame37138Rkb (I26:213;26:141)
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
                    // frame37134Ay5 (I26:213;26:142)
                    width: 52*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff4b39ef),
                      borderRadius: BorderRadius.circular(90.2483901978*fem),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // stepfiveenjoyyourfreestuff6rj (7:291)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 158*fem),
              constraints: BoxConstraints (
                maxWidth: 329*fem,
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
                      text: 'Step Five:\n',
                    ),
                    TextSpan(
                      text: 'Enjoy your free stuff.',
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
              // continuebuttonFd9 (7:306)
              margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 40*fem, 814.92*fem),
              padding: EdgeInsets.fromLTRB(5.5*fem, 10*fem, 5.5*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff003da5),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // smilingfacewithsunglassesxGf (I7:307;301:1178)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                    width: 46*fem,
                    height: 46*fem,
                    child: Image.asset(
                      'assets/page-1/images/smiling-face-with-sunglasses-UCP.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    // collectyourallowancefRy (7:308)
                    'collect your allowance',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Outfit',
                      fontSize: 25*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.26*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // continuebuttonbaX (7:302)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1942.48*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(5.5*fem, 2*fem, 5.5*fem, 2*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xff003da5),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // smilingfacewithsunglassesgby (I7:303;301:1178)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1816.98*fem, 0*fem),
                    width: 46*fem,
                    height: 46*fem,
                    child: Image.asset(
                      'assets/page-1/images/smiling-face-with-sunglasses.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    // collectyourallowanceoRh (7:304)
                    'collect your allowance',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Outfit',
                      fontSize: 25*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.26*ffem/fem,
                      color: Color(0xffffffff),
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
