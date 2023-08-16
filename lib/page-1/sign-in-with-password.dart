import 'package:allowance/main.dart';
import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/page-1/tutorial-1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';
import 'package:allowance/page-1/onboarding-2-done.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class SignInWithPasswordPage extends StatefulWidget {
  final String emailInput;
  String passwordInput = "";

  SignInWithPasswordPage({required this.emailInput});

  @override
  _SignInWithPasswordPageState createState() => _SignInWithPasswordPageState();
}

class _SignInWithPasswordPageState extends State<SignInWithPasswordPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff041e42),
        centerTitle: true,
        title: Text(
          'Sign In',
          style: SafeGoogleFont(
            'Outfit',
            fontSize: 25 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.26 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            child: Container(
              // enterpassworddoneK7d (26:47)
              padding: EdgeInsets.fromLTRB(
                  53.5 * fem, 34 * fem, 56.5 * fem, 34 * fem),
              width: double.infinity,
              height: 844 * fem,
              decoration: BoxDecoration(
                color: Color(0xff041e42),
              ),
              child: Container(
                // frame37252qLs (26:48)
                width: double.infinity,
                height: 435 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame37251tK9 (26:50)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupddqrRZy (2CNASAsCU1RSjfPpnTdDqR)
                            padding: EdgeInsets.fromLTRB(
                                54.5 * fem, 0 * fem, 47.5 * fem, 25 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // progressbarphaseoneMTd (26:51)
                                  margin: EdgeInsets.fromLTRB(
                                      48 * fem, 0 * fem, 0 * fem, 50 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 52 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 18 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame37136fDR (I26:51;7:35)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 6 * fem, 0 * fem),
                                        width: 20 * fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(
                                              90.2483901978 * fem),
                                        ),
                                      ),
                                      Container(
                                        // autogroupijhyo4j (2CNAaqHRyjQSSbhko3ijHy)
                                        width: 52 * fem,
                                        height: double.infinity,
                                        child: Container(
                                          // frame37134FBd (I26:51;7:34)
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xff4b39ef),
                                            borderRadius: BorderRadius.circular(
                                                90.2483901978 * fem),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // enteryourpasswordbWP (26:52)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 4 * fem, 0 * fem),
                                  constraints: BoxConstraints(
                                    maxWidth: 174 * fem,
                                  ),
                                  child: Text(
                                    'Enter your password',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Outfit',
                                      fontSize: 36 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.26 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame37156He7 (26:53)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // passwordentrytwo37V (26:54)
                                  width: double.infinity,
                                  height: 60 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // passwordzHd (26:55)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 86 * fem,
                                            height: 26 * fem,
                                            child: Text(
                                              'Password',
                                              style: SafeGoogleFont(
                                                'Outfit',
                                                fontSize: 20 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.26 * ffem / fem,
                                                color: Color(0x99ffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // frame37148hC3 (26:56)
                                        left: 3 * fem,
                                        top: 25 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 277 * fem,
                                            height: 35 * fem,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10 * fem),
                                                color: Color(0xff63666a),
                                              ),
                                              child: TextField(
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder:
                                                      InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 8 * fem,
                                                          horizontal: 10 * fem),
                                                  hintText: '*************',
                                                  hintStyle: TextStyle(
                                                      color: Color(0x99ffffff)),
                                                ),
                                                style: SafeGoogleFont(
                                                  'Outfit',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xffffffff),
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    widget.passwordInput =
                                                        value;
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
                                  // autogroupq6njXRy (2CNAxQVpUakF7XXktyQ6nj)
                                  padding: EdgeInsets.fromLTRB(46.5 * fem,
                                      55 * fem, 43.5 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 91 * fem,
                                  child: TextButton(
                                    // continuebuttonrj9 (26:62)
                                    onPressed: () => signIn(context),
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xff003da5),
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'continue',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Outfit',
                                            fontSize: 25 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.26 * ffem / fem,
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
        ),
      ),
    );
  }

  signIn(BuildContext context) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: widget.emailInput, password: widget.passwordInput);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Tut1()),
      (route) => false,
    );
  }
}
