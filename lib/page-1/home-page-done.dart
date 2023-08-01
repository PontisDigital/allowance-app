import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homepagedonewiF (324:418)
        padding: EdgeInsets.fromLTRB(15*fem, 34*fem, 15*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame37192TRh (324:421)
              margin: EdgeInsets.fromLTRB(23.01*fem, 0*fem, 22.47*fem, 17*fem),
              width: double.infinity,
              height: 151.7*fem,
              child: Stack(
                children: [
                  Positioned(
                    // hoyaallowancemxB (324:422)
                    left: 66.2337646484*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 178*fem,
                        height: 32*fem,
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
                  ),
                  Positioned(
                    // allowancebalanceEqm (324:423)
                    left: 0*fem,
                    top: 25*fem,
                    child: Container(
                      width: 311*fem,
                      height: 126.7*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // Zd9 (324:424)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 311*fem,
                                height: 107*fem,
                                child: Text(
                                  '\$43.32',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 87.7027130127*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // totalallowanceTyR (324:425)
                            left: 62.2337646484*fem,
                            top: 95.7026977539*fem,
                            child: Align(
                              child: SizedBox(
                                width: 186*fem,
                                height: 31*fem,
                                child: Text(
                                  'total allowance',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 25*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125*ffem/fem,
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
                ],
              ),
            ),
            Container(
              // frame37246Mou (324:547)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37245Jj9 (324:546)
                    margin: EdgeInsets.fromLTRB(2.28*fem, 0*fem, 2.28*fem, 15*fem),
                    width: double.infinity,
                    height: 55.57*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff09367b),
                      borderRadius: BorderRadius.circular(9.2609996796*fem),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // helpcenterD5R (324:542)
                          left: 0*fem,
                          top: 4.6305236816*fem,
                          child: Align(
                            child: SizedBox(
                              width: 46.31*fem,
                              height: 46.3*fem,
                              child: Image.asset(
                                'assets/page-1/images/helpcenter.png',
                                width: 46.31*fem,
                                height: 46.3*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // scanyourqrcodeeverytimeyoushop (324:540)
                          left: 46.3049316406*fem,
                          top: 4.6305236816*fem,
                          child: Align(
                            child: SizedBox(
                              width: 302*fem,
                              height: 45*fem,
                              child: Text(
                                'Scan your QR code every time you shop to refill your allowance.',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 18.5219993591*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
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
                    // frame37191aaB (324:426)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame37189huh (324:427)
                          margin: EdgeInsets.fromLTRB(2.07*fem, 0*fem, 2.07*fem, 17*fem),
                          padding: EdgeInsets.fromLTRB(14*fem, 15*fem, 14*fem, 21.49*fem),
                          width: double.infinity,
                          height: 203.4*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(26.3999996185*fem),
                            gradient: LinearGradient (
                              begin: Alignment(-1, -0.002),
                              end: Alignment(1.002, 0.053),
                              colors: <Color>[Color(0xfff9b4b4), Color(0xffeba4e8), Color(0xffb4f2e1)],
                              stops: <double>[0, 0.526, 0.99],
                            ),
                          ),
                          child: Container(
                            // storefeaturevGf (324:428)
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame37188rg7 (324:429)
                                  margin: EdgeInsets.fromLTRB(0*fem, 41.7*fem, 25*fem, 43.21*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // thatsenoughforBiP (324:430)
                                        'that’s enough for',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1*ffem/fem,
                                          color: Color(0xff525354),
                                        ),
                                      ),
                                      Container(
                                        // achaiteaatmidnightmugu8b (324:431)
                                        constraints: BoxConstraints (
                                          maxWidth: 203*fem,
                                        ),
                                        child: Text(
                                          'a Chai Tea at Midnight Mug',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 30*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1*ffem/fem,
                                            color: Color(0xff525354),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame37163QLF (324:432)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // screenshot202307201352051MmH (324:433)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: 96.34*fem,
                                        height: 137.91*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20.28125*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/screenshot-2023-07-20-135205-1.png',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // Frf (324:434)
                                        '\$3.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Outfit',
                                          fontSize: 22.3093757629*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26*ffem/fem,
                                          color: Color(0xff525354),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // frame37190n5u (324:435)
                          width: double.infinity,
                          height: 99.22*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // payX3V (324:436)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                width: 174.24*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18.4576263428*fem),
                                ),
                                child: TextButton(
                                  // sendbuttonSRM (324:437)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(37.51*fem, 7.26*fem, 42.73*fem, 7.26*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0x7f1900ff),
                                      borderRadius: BorderRadius.circular(18.4576263428*fem),
                                      border: Border (
                                      ),
                                    ),
                                    child: Text(
                                      'pay',
                                      style: SafeGoogleFont (
                                        'Outfit',
                                        fontSize: 54.4499931335*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.26*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // sendgqV (324:440)
                                width: 174.24*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18.4576263428*fem),
                                ),
                                child: TextButton(
                                  // sendbutton2uM (324:441)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(27.83*fem, 7.26*fem, 27.41*fem, 7.26*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0x3f4b39ef),
                                      borderRadius: BorderRadius.circular(18.4576263428*fem),
                                      border: Border (
                                      ),
                                    ),
                                    child: Text(
                                      'send',
                                      style: SafeGoogleFont (
                                        'Outfit',
                                        fontSize: 54.4499931335*ffem,
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
                  Container(
                    // stores4b9 (324:462)
                    margin: EdgeInsets.fromLTRB(0.79*fem, 0*fem, 0.79*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // storecardoHq (324:463)
                          padding: EdgeInsets.fromLTRB(11*fem, 15*fem, 11*fem, 36*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(26.3999996185*fem),
                            gradient: LinearGradient (
                              begin: Alignment(-1.001, -0.052),
                              end: Alignment(1.002, -0.001),
                              colors: <Color>[Color(0xfff8b4b5), Color(0xffeba4e8), Color(0xffb4f2e1)],
                              stops: <double>[0, 0.494, 1],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame37165pyd (324:464)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                width: double.infinity,
                                height: 84.7*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame37164xK9 (324:465)
                                      margin: EdgeInsets.fromLTRB(0*fem, 4.35*fem, 18*fem, 4.35*fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // availableallowanceUoH (324:466)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                            child: Text(
                                              'available allowance',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 16.5*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333*ffem/fem,
                                                color: Color(0xff525354),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // aLX (324:467)
                                            '\$15.32',
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 59.4000015259*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 0.7618519237*ffem/fem,
                                              letterSpacing: -0.5940000153*fem,
                                              color: Color(0xff08090a),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // logoudh (324:468)
                                      padding: EdgeInsets.fromLTRB(7.7*fem, 5.5*fem, 7.7*fem, 4.4*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(16.5*fem),
                                      ),
                                      child: Center(
                                        // corp1Evs (324:470)
                                        child: SizedBox(
                                          width: 104.5*fem,
                                          height: 74.8*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/corp-1.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // keepshoppingtorefillyourallowa (324:472)
                                margin: EdgeInsets.fromLTRB(3.65*fem, 0*fem, 0*fem, 0*fem),
                                child: Text(
                                  'keep shopping to refill your allowance',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 12.1000003815*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.8181817609*ffem/fem,
                                    color: Color(0xff525354),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 14*fem,
                        ),
                        Container(
                          // storecard24uu (324:476)
                          padding: EdgeInsets.fromLTRB(11*fem, 15*fem, 11*fem, 36*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(26.3999996185*fem),
                            gradient: RadialGradient (
                              center: Alignment(-0.024, 0.037),
                              radius: 0.49,
                              colors: <Color>[Color(0xfffffcdc), Color(0xffd9a7c7)],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame37170L6j (324:477)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                width: double.infinity,
                                height: 84.7*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame37168Th9 (324:478)
                                      margin: EdgeInsets.fromLTRB(0*fem, 4.35*fem, 44*fem, 4.35*fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // availableallowanceC8w (324:479)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                            child: Text(
                                              'available allowance',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 16.5*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333*ffem/fem,
                                                color: Color(0xff525354),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // i7H (324:480)
                                            '\$8.69',
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 59.4000015259*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 0.7618519237*ffem/fem,
                                              letterSpacing: -0.5940000153*fem,
                                              color: Color(0xff08090a),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // logorDV (324:482)
                                      padding: EdgeInsets.fromLTRB(19.2*fem, 1.6*fem, 19.2*fem, 1.6*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(16.5*fem),
                                      ),
                                      child: Center(
                                        // download11z4o (324:484)
                                        child: SizedBox(
                                          width: 81.5*fem,
                                          height: 81.5*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/download-1-1.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // keepshoppingtorefillyourallowa (324:486)
                                margin: EdgeInsets.fromLTRB(3.65*fem, 0*fem, 0*fem, 0*fem),
                                child: Text(
                                  'keep shopping to refill your allowance',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 12.1000003815*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.8181817609*ffem/fem,
                                    color: Color(0xff525354),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 14*fem,
                        ),
                        Container(
                          // storecard32GP (324:490)
                          padding: EdgeInsets.fromLTRB(11*fem, 15*fem, 11*fem, 30*fem),
                          width: double.infinity,
                          height: 179.7*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(26.3999996185*fem),
                            gradient: LinearGradient (
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[Color(0xffb4f2e1), Color(0xfff8b4b4)],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: Container(
                            // frame37187HCK (324:491)
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame37184S5D (324:492)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                                  width: double.infinity,
                                  height: 84.7*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame37173A1D (324:493)
                                        margin: EdgeInsets.fromLTRB(0*fem, 4.35*fem, 25*fem, 4.35*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // availableallowance69m (324:494)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                              child: Text(
                                                'available allowance',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 16.5*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3333333333*ffem/fem,
                                                  color: Color(0xff525354),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // QAT (324:495)
                                              '\$24.17',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 59.4000015259*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 0.7618519237*ffem/fem,
                                                letterSpacing: -0.5940000153*fem,
                                                color: Color(0xff08090a),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // logoYGf (324:497)
                                        padding: EdgeInsets.fromLTRB(7.7*fem, 2.2*fem, 9.2*fem, 0.66*fem),
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(16.5*fem),
                                        ),
                                        child: Align(
                                          // tile11GiT (324:499)
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            width: 103*fem,
                                            height: 81.84*fem,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(18.3919868469*fem),
                                              child: Image.asset(
                                                'assets/page-1/images/tile1-1.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame37186nB1 (324:500)
                                  width: 325.6*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // keepshoppingtorefillyourallowa (324:501)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.79*fem),
                                        child: Text(
                                          'keep shopping to refill your allowance',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 12.1000003815*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.8181817609*ffem/fem,
                                            color: Color(0xff525354),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame37182EYo (324:502)
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // vector5a6s (324:504)
                                              width: 155.45*fem,
                                              height: 0.21*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-5.png',
                                                width: 155.45*fem,
                                                height: 0.21*fem,
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}
