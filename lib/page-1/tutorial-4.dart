import 'package:allowance/button.dart';
import 'package:allowance/main.dart';
import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/tut_button.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Tut4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // tutorial66Ab (7:288)
          padding: EdgeInsets.fromLTRB(0 * fem, 34 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff041e42),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // stepfiveenjoyyourfreestuff6rj (7:291)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                constraints: BoxConstraints(
                  maxWidth: 329 * fem,
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: SafeGoogleFont(
                      'Outfit',
                      fontSize: 36 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.26 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                    children: [
                      TextSpan(
                        text: 'Step Four:\n',
                      ),
                      TextSpan(
                        text: 'Each store has a monthly maximum spending limit and Allowance runs on a ',
                        style: SafeGoogleFont(
                          'Outfit',
                          fontSize: 30 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.26 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                      TextSpan(
                          text: 'first come, first serve ',
                          style: SafeGoogleFont(
                            'Outfit',
                            fontSize: 30 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.26 * ffem / fem,
                            color: Color(0xffffffff),
                          )),
                      TextSpan(
                          style: SafeGoogleFont('Outfit',
                              fontSize: 30 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.26 * ffem / fem,
                              color: Color(0xffffffff)),
                          text:
                              'basis. In other words, you should spend your allowance as soon as you can before the limit is met'),
                    ],
                  ),
                ),
              ),
			  SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: LinearPercentIndicator(
                  percent: 0.5,
                  trailing:
                      Text("\$7500", style: TextStyle(color: Colors.white)),
                  center: Text('\$3750', style: TextStyle(color: Colors.white)),
                  progressColor: Colors.green,
                  backgroundColor: Color(0xff7c7c7c),
                  lineHeight: 30.0,
                  barRadius: Radius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
