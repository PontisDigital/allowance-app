import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:allowance/page-1/onboarding-start.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  void navigateToOnboarding(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardingStartPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double baseWidth = 390;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fem = screenWidth / baseWidth;
    final double ffem = fem * 0.97;

    return SingleChildScrollView(child: GestureDetector(
      onTap: () => navigateToOnboarding(context),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 71 * fem,
          vertical: 339 * fem,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff041e42),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'allowance.',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
				'Outfit',
				fontSize: 50 * ffem,
				fontWeight: FontWeight.w700,
				height: 1.26 * ffem / fem,
				color: Color(0xffffffff),
			  ),
            ),
            SizedBox(height: 9 * fem),
            Text(
              'tap anywhere',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2925,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 20 * fem), // Adjust spacing as needed
            Image.asset(
              'assets/page-1/images/jack-the-bulldog.png',
              width: 70 * fem,
              height: 70 * fem,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
	  ),
    );
  }
}

