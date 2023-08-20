import 'package:allowance/button.dart';
import 'package:allowance/input.dart';
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

  TextEditingController emailController = TextEditingController();

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
      body: Container(
        width: double.infinity,
        child: Container(
          padding:
              EdgeInsets.fromLTRB(20 * fem, 34 * fem, 20 * fem, 34 * fem),
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
                      Visibility(
                        visible:
                            MediaQuery.of(context).viewInsets.bottom == 0,
                        child: Container(
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
                      ),
                    ],
                  ),
                ),
                CustomInput(
                  isPassword: false,
                  hintText: 'Email',
                  onChanged: (String val) {
                    handleEmailChange(val);
                  },
                  keyboardType: TextInputType.emailAddress,
                  onSubmitted: (String val) {
                    handleGivenEmail(context, val);
                  },
                  controller: emailController,
                ),
                SizedBox(
                  height: 20 * fem,
                ),
                CustomButton(
                    text: 'continue',
                    onPressed: () {
                      if (!buttonPressed) {
                        buttonPressed = true;
                        handleGivenEmail(context, emailController.value.text);
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  handleGivenEmail(BuildContext context, String email) async {
    if (!email.endsWith('@georgetown.edu')) {
	buttonPressed = false;
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Invalid Email'),
                content: Text('Please enter a valid Georgetown email address.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  )
                ],
              ));
      return;
    }
    List<String> signInMethods =
        await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);

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
                SignInWithPasswordPage(emailInput: emailController.text)));
  }

  moveToOnboardingPart2(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                OnboardingSignUpPage(emailInput: emailController.text)));
  }

  void handleEmailChange(String newValue) {
    if (!emailController.text.contains('@')) {
      emailController.value = emailController.value.copyWith(
        text: newValue + "@georgetown.edu",
      );
    }
  }
}
