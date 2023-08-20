import 'package:allowance/button.dart';
import 'package:allowance/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';
import 'package:allowance/page-1/onboarding-2-done.dart';

class OnboardingSignUpPage extends StatelessWidget {
  final String emailInput;
  OnboardingSignUpPage({required this.emailInput});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    TextEditingController usernameController = TextEditingController();

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
      body: Container(
        // onboarding2doneoCj (301:1077)
        padding: EdgeInsets.fromLTRB(45 * fem, 34 * fem, 45 * fem, 34 * fem),
        width: double.infinity,
        height: 844 * fem,
        decoration: BoxDecoration(
          color: Color(0xff041e42),
        ),
        child: Container(
          // frame37254XeX (7:128)
          width: double.infinity,
          height: 465 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // frame37253PAw (7:127)
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: MediaQuery.of(context).viewInsets.bottom == 0,
                      child: Container(
                        // autogroupibvhwTM (2CN8rdfPbhJDfwXmDUibVH)
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20 * fem, 52 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // progressbarphaseonesM1 (7:107)
                              margin: EdgeInsets.fromLTRB(
                                  78 * fem, 0 * fem, 52 * fem, 31 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 26 * fem, 0 * fem),
                              width: double.infinity,
                              height: 18 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame37136NoZ (I7:107;7:29)
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
                                    // frame371347FM (I7:107;7:28)
                                    width: 52 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xff4b39ef),
                                      borderRadius: BorderRadius.circular(
                                          90.2483901978 * fem),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6 * fem,
                                  ),
                                  Container(
                                    // frame37137rCw (I7:107;7:30)
                                    width: 20 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(
                                          90.2483901978 * fem),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible:
                                  MediaQuery.of(context).viewInsets.bottom == 0,
                              child: Container(
                                // createyourusernamegetyourallow (301:1084)
                                constraints: BoxConstraints(
                                  maxWidth: 260 * fem,
                                ),
                                child: Text(
                                  'Create your username, get your allowance.',
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
                  ],
                ),
              ),
              CustomInput(
                  hintText: "Username",
                  controller: usernameController,
                  onSubmitted: (value) {
                    moveToOnboardingPart2(context, usernameController.text);
                  }),
              SizedBox(
                height: 20 * fem,
              ),
              CustomButton(
			  minHeight: 60 * fem,
                onPressed: () {
                  moveToOnboardingPart2(context, usernameController.text);
                },
                text: 'continue',
              ),
            ],
          ),
        ),
      ),
    );
  }

  moveToOnboardingPart2(BuildContext context, String usernameInput) {
    if (usernameInput.isNotEmpty) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OnboardPasswordPage(
                    emailInput: emailInput,
                    usernameInput: usernameInput,
                  )));
    }
  }
}
