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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OnboardPasswordPage extends StatefulWidget {
  final String emailInput;
  final String usernameInput;

  OnboardPasswordPage({required this.emailInput, required this.usernameInput});

  @override
  State<OnboardPasswordPage> createState() => _OnboardPasswordPageState();
}

class _OnboardPasswordPageState extends State<OnboardPasswordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool buttonPressed = false;

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
          'Sign Up',
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
            // onboarding3doneMJf (301:1091)
            padding: EdgeInsets.fromLTRB(
                53.5 * fem,
                (MediaQuery.of(context).viewInsets.bottom == 0)
                    ? 34 * fem
                    : 20 * fem,
                56.5 * fem,
                34 * fem),
            width: double.infinity,
            height: 844 * fem,
            decoration: BoxDecoration(
              color: Color(0xff041e42),
            ),
            child: Container(
              // frame37252UPH (7:126)
              width: double.infinity,
              height: 470 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Visibility(
                    visible: MediaQuery.of(context).viewInsets.bottom == 0,
                    child: Container(
                      // frame37251vm5 (7:125)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupw5sptC7 (2CN9hMmCc9CZmTX8GnW5SP)
                            padding: EdgeInsets.fromLTRB(
                                43 * fem, 0 * fem, 40 * fem, 25 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // progressbarphaseoneRC3 (7:112)
                                  margin: EdgeInsets.fromLTRB(46.5 * fem,
                                      0 * fem, 20.5 * fem, 50 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 26 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 18 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame371367qZ (I7:112;7:35)
                                        width: 20 * fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(
                                              90.2483901978 * fem),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6 * fem,
                                      ),
                                      Container(
                                        // frame37137f6P (I7:112;7:36)
                                        width: 20 * fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(
                                              90.2483901978 * fem),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6 * fem,
                                      ),
                                      Container(
                                        // frame37134zeT (I7:112;7:34)
                                        width: 52 * fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff4b39ef),
                                          borderRadius: BorderRadius.circular(
                                              90.2483901978 * fem),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // createyourpasswordwpb (301:1098)
                                  constraints: BoxConstraints(
                                    maxWidth: 197 * fem,
                                  ),
                                  child: Text(
                                    'Create your password',
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
                        ],
                      ),
                    ),
                  ),
                  CustomInput(
                    hintText: "Password",
                    controller: passwordController,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  CustomInput(
                    hintText: "Confirm Password",
                    controller: confirmPasswordController,
                    isPassword: true,
                    onSubmitted: (value) {
                      if (value == passwordController.text) {
                        createAccount(context, value);
                        setState(() {
                          buttonPressed = true;
                        });
                      } else {
                        passwordMissmatchDialogue(context);
                      }
                    },
                  ),
                  SizedBox(
                    height: 10 * fem,
                  ),
                  !buttonPressed
                      ? CustomButton(
                          minHeight: 50 * fem,
                          onPressed: () {
                            if (passwordController.text ==
                                confirmPasswordController.text) {
                              setState(() {
                                buttonPressed = true;
                              });
                              createAccount(context, passwordController.text);
                            } else {
                              passwordMissmatchDialogue(context);
                            }
                          },
                          text: "continue")
                      : CircularProgressIndicator(
                          color: Colors.white,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  createAccount(BuildContext context, String password) async {
    final String apiUrl = 'https://api.allowance.fund/register';

    final Map<String, dynamic> requestData = {
      "email": widget.emailInput,
      "username": widget.usernameInput,
      "password": password,
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        // You can handle the response here if needed
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: widget.emailInput, password: password);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => TheTutorial()),
          (route) => false,
        );
      } else {
        // You can handle the response here if needed
        setState(() {
          buttonPressed = false;
        });
      }
    } catch (error) {
      setState(() {
        buttonPressed = false;
      });
    }
  }

  void passwordMissmatchDialogue(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Password Missmatch"),
              content: Text(
                  "The passwords you entered do not match. Please try again."),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context), child: Text("OK"))
              ],
            ));
  }
}
