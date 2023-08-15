import 'package:allowance/main.dart';
import 'package:allowance/page-1/home-page-done.dart';
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
            padding:
                EdgeInsets.fromLTRB(53.5 * fem, 34 * fem, 56.5 * fem, 34 * fem),
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
                  Container(
                    // hoyaallowanced1H (301:1092)
                    margin: EdgeInsets.fromLTRB(
                        3 * fem, 0 * fem, 0 * fem, 68 * fem),
                    child: Text(
                      'hoya allowance',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Outfit',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.26 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
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
                                margin: EdgeInsets.fromLTRB(
                                    46.5 * fem, 0 * fem, 20.5 * fem, 50 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 26 * fem, 0 * fem),
                                width: double.infinity,
                                height: 18 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        Container(
                          // frame371564PR (301:1099)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // passwordentrytwo1pT (301:1101)
                                width: double.infinity,
                                height: 60 * fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // passwordNQ7 (301:1102)
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
                                      // frame371484nj (301:1103)
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
                                                      EdgeInsets.fromLTRB(
                                                          5 * fem,
                                                          5 * fem,
                                                          5 * fem,
                                                          4 * fem),
                                                  hintText: '*************',
                                                  hintStyle: TextStyle(
                                                      color: Color(0x99ffffff)),
                                                ),
                                                style: SafeGoogleFont(
                                                  'Outfit',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xff000000),
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    widget.password = value;
                                                  });
                                                }),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroup34jkUrT (2CNA41qSywmruqx3Dj34JK)
                                padding: EdgeInsets.fromLTRB(
                                    3 * fem, 15 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // passwordentryone1bV (301:1105)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                      width: double.infinity,
                                      height: 60 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // confirmpasswordYLX (301:1106)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 163 * fem,
                                                height: 26 * fem,
                                                child: Text(
                                                  'Confirm Password',
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
                                            // frame371493YB (301:1107)
                                            left: 0 * fem,
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
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      contentPadding:
                                                          EdgeInsets.fromLTRB(
                                                              5 * fem,
                                                              5 * fem,
                                                              5 * fem,
                                                              4 * fem),
                                                      hintText: '*************',
                                                      hintStyle: TextStyle(
                                                          color: Color(
                                                              0x99ffffff)),
                                                    ),
                                                    style: SafeGoogleFont(
                                                      'Outfit',
                                                      fontSize: 20 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.26 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                    onChanged: (value) {
                                                      setState(() {
                                                        widget.passwordConfirm =
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
                                      // continuebutton6mM (301:1109)
                                      margin: EdgeInsets.fromLTRB(43.5 * fem,
                                          0 * fem, 43.5 * fem, 0 * fem),
                                      child: TextButton(
                                        onPressed: () => createAccount(context),
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          height: 36 * fem,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  createAccount(BuildContext context) async {
    final String apiUrl = 'https://api.allowance.fund/register';

    final Map<String, dynamic> requestData = {
      "email": widget.emailInput,
      "username": widget.usernameInput,
      "password": widget.password,
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        print('Request sent successfully');
        // You can handle the response here if needed
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: widget.emailInput, password: widget.password);
        Navigator.pop(context);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp()));
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (error) {
      print('Error sending request: $error');
    }
  }
}
