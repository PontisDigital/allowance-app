import 'package:allowance/page-1/onboarding-1-done.dart';
import 'package:allowance/page-1/sign-in-with-password.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OnboardingStartPage extends StatefulWidget {
  @override
  _OnboardingStartPageState createState() => _OnboardingStartPageState();
}

class _OnboardingStartPageState extends State<OnboardingStartPage> {
  String emailPartInput = "";
  String emailFullInput = "";

  bool buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff041e42),
        title: Text(
          'hoya allowance',
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
            padding:
                EdgeInsets.fromLTRB(45 * fem, 34 * fem, 45 * fem, 34 * fem),
            width: double.infinity,
            height: 844 * fem,
            decoration: BoxDecoration(
              color: Color(0xff041e42),
            ),
            child: Container(
              width: double.infinity,
              height: 416 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              34.5 * fem, 0 * fem, 34.5 * fem, 52 * fem),
                          width: double.infinity,
                          height: 137 * fem,
                          child: Center(
                            child: SizedBox(
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: 231 * fem,
                                ),
                                child: Text(
                                  'Enter your Georgetown email address',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 36 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 31 * fem),
                          width: double.infinity,
                          height: 60 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 50 * fem,
                                    height: 26 * fem,
                                    child: Text(
                                      'Email',
                                      style: TextStyle(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.26 * ffem / fem,
                                        color: Color(
                                            0xffffffff), // Text color changed to white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0 * fem,
                                top: 25 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 300 * fem,
                                    height: 35 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                        color: Color(0xff63666a),
                                      ),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder:
                                                      InputBorder.none,
                                                  hintText: 'netid',
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 9 * fem,
                                                          horizontal: 32 * fem),
                                                  hintStyle: TextStyle(
                                                      color: Color(0x99ffffff)),
                                                ),
                                                style: TextStyle(
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(
                                                      0xffffffff), // Text color changed to white
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    if (value
                                                        .toLowerCase()
                                                        .endsWith(
                                                            "@georgetown.edu")) {
                                                      emailPartInput = value
                                                          .toLowerCase()
                                                          .replaceAll(
                                                              "@georgetown.edu",
                                                              "");
                                                    } else {
                                                      emailPartInput =
                                                          value.toLowerCase();
                                                    }
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 10, 5),
                                            child: Text(
                                              '@georgetown.edu',
                                              style: TextStyle(
                                                fontSize: 20 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.26 * ffem / fem,
                                                color: Color(
                                                    0xffffffff), // Text color changed to white
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              55 * fem, 0 * fem, 55 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {
                              if (!buttonPressed) {
							  	buttonPressed = true;
                                handleGivenEmail(context);
                              }
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: (!buttonPressed) ? Container(
                              width: double.infinity,
                              height: 36 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xff003da5),
                                borderRadius: BorderRadius.circular(10 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'continue',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 25 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            )
							:
							CircularProgressIndicator(
							color: Colors.white,
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
        ),
      ),
    );
  }

  handleGivenEmail(BuildContext context) async {
    String fullEmail = emailPartInput + "@georgetown.edu";
    emailFullInput = fullEmail;

    List<String> signInMethods =
        await FirebaseAuth.instance.fetchSignInMethodsForEmail(fullEmail);

    if (signInMethods.isNotEmpty) {
      moveToSignOnWithPassword(context);
    } else {
      moveToOnboardingPart2(context);
    }

	buttonPressed = false;
  }

  moveToSignOnWithPassword(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                SignInWithPasswordPage(emailInput: emailFullInput)));
  }

  moveToOnboardingPart2(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                OnboardingSignUpPage(emailInput: emailFullInput)));
  }
}

void main() {
  runApp(MaterialApp(home: OnboardingStartPage()));
}
