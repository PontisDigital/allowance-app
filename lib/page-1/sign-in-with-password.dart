import 'package:allowance/button.dart';
import 'package:allowance/input.dart';
import 'package:allowance/main.dart';
import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/page-1/tutorial-1.dart';
import 'package:allowance/the_tutorial.dart';
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

  SignInWithPasswordPage({required this.emailInput});

  @override
  _SignInWithPasswordPageState createState() => _SignInWithPasswordPageState();
}

class _SignInWithPasswordPageState extends State<SignInWithPasswordPage> {
  bool buttonPressed = false;

  TextEditingController passwordController = TextEditingController();

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
      body: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          child: Container(
            // enterpassworddoneK7d (26:47)
            padding:
                EdgeInsets.fromLTRB(53.5 * fem, 34 * fem, 56.5 * fem, 34 * fem),
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
                        Visibility(
                          visible:
                              MediaQuery.of(context).viewInsets.bottom == 0,
                          child: Container(
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
                                Visibility(
                                  visible: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom ==
                                      0,
                                  child: Container(
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomInput(
                          onSubmitted: (value) {
                            signIn(context, value);
                          },
                          controller: passwordController,
                          isPassword: true,
                          hintText: 'Password',
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                            minHeight: 60 * fem,
                            text: 'Sign In',
                            onPressed: () {
                              signIn(context, passwordController.text);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  signIn(BuildContext context, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: widget.emailInput, password: password);
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => TheTutorial()),
        (route) => false,
      );
    } catch (e) {
      String error = e.toString();
      error = error.substring(error.indexOf(']') + 1);
      if (error.contains('password') || error.contains('channel')) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('Invalid Credentials'),
                  content: Text('Please check your password and try again'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            buttonPressed = false;
                          });
                          Navigator.pop(context);
                        },
                        child: Text('OK'))
                  ],
                ));
      }
    }
  }
}
