import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OnboardPasswordPage extends StatefulWidget
{
  final String emailInput;
  final String usernameInput;

  String password = "";
  String passwordConfirm = "";

  OnboardPasswordPage({required this.emailInput, required this.usernameInput});

  @override
  _OnboardPasswordPageState createState() => _OnboardPasswordPageState();
}

class _OnboardPasswordPageState extends State<OnboardPasswordPage> {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
	  body: SingleChildScrollView(
		child: Container(
      width: double.infinity,
      child: Container(
        // onboarding2doneVh9 (301:1091)
        padding: EdgeInsets.fromLTRB(45*fem, 34*fem, 68*fem, 346*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hoyaallowanceQJK (301:1092)
              margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 0*fem, 68*fem),
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
              // frame37157uF5 (301:1093)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupnwrurRD (CFf3FwEJo3LoZcvgGHNWRu)
                    padding: EdgeInsets.fromLTRB(51.5*fem, 0*fem, 28.5*fem, 25*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // progressbarphasetwonJs (301:1094)
                          margin: EdgeInsets.fromLTRB(46.5*fem, 0*fem, 46.5*fem, 50*fem),
                          width: double.infinity,
                          height: 18*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame37136hgj (301:1095)
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
                                // frame37134pmM (301:1096)
                                width: 52*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff4b39ef),
                                  borderRadius: BorderRadius.circular(90.2483901978*fem),
                                ),
                              ),
                              SizedBox(
                                width: 6*fem,
                              ),
                              Container(
                                // frame37137Ziw (301:1097)
                                width: 20*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(90.2483901978*fem),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // createyourpasswordWeB (301:1098)
                          constraints: BoxConstraints (
                            maxWidth: 197*fem,
                          ),
                          child: Text(
                            'Create your password',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Outfit',
                              fontSize: 36*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.26*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame37156dTu (301:1099)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // passwordinputnLo (301:1100)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // passwordentrytwoj19 (301:1101)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 60*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // passwordFEP (301:1102)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 86*fem,
                                          height: 26*fem,
                                          child: Text(
                                            'Password',
                                            style: SafeGoogleFont (
                                              'Outfit',
                                              fontSize: 20*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.26*ffem/fem,
                                              color: Color(0x99ffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // frame37148vbR (301:1103)
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
                                              onChanged: (value)
                                              {
                                                setState(()
                                                  {
                                                    widget.password = value;
                                                  });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // passwordentryoneY71 (301:1105)
                                width: double.infinity,
                                height: 60*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // confirmpassword5sd (301:1106)
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
                                              color: Color(0x99ffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // frame37149BQs (301:1107)
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
                                              onChanged: (value)
                                              {
                                                setState(()
                                                {
                                                  widget.passwordConfirm = value;
                                                });
                                              },
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
                          // continuebuttoncm5 (301:1109)
                          margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 32*fem, 0*fem),
                          child: TextButton(
                            onPressed: () => createAccount(),
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 36*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff003da5),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'continue',
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
	),
	);
  }

  createAccount() async
  {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: widget.emailInput,
      password: widget.password,
    );
    String uid = userCredential.user!.uid;

    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      'email': userCredential.user!.email,
      'username': widget.usernameInput,
    });
  }
}
