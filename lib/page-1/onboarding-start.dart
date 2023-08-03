import 'package:allowance/page-1/onboarding-1-done.dart';
import 'package:allowance/page-1/sign-in-with-password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';
import 'package:allowance/page-1/onboarding-2-done.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OnboardingStartPage extends StatefulWidget
{
	@override
	_OnboardingStartPageState createState() => _OnboardingStartPageState();
}

class _OnboardingStartPageState extends State<OnboardingStartPage> {

	String emailInput = "";

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return 
		Scaffold(
		  body: SingleChildScrollView(
		  child: Container(
			width: double.infinity,
			child: Container(
			  // onboarding1donediF (301:1077)
			  padding: EdgeInsets.fromLTRB(45*fem, 34*fem, 45*fem, 345*fem),
			  width: double.infinity,
			  decoration: BoxDecoration (
				color: Color(0xff041e42),
			  ),
			  child: Column(
				crossAxisAlignment: CrossAxisAlignment.center,
				children: [
				  Container(
					// hoyaallowanceLsZ (301:1078)
					margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 68*fem),
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
					// frame371553my (301:1079)
					width: double.infinity,
					child: Column(
					  crossAxisAlignment: CrossAxisAlignment.center,
					  children: [
						Container(
						  // autogroupykjknzT (CFf2sSsnB9EVN9hb1NYkJK)
						  padding: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 52*fem),
						  width: double.infinity,
						  child: Column(
							crossAxisAlignment: CrossAxisAlignment.center,
							children: [
							  Container(
								// progressbarphaseoneKjV (301:1080)
								margin: EdgeInsets.fromLTRB(78*fem, 0*fem, 78*fem, 31*fem),
								width: double.infinity,
								height: 18*fem,
								child: Row(
								  crossAxisAlignment: CrossAxisAlignment.center,
								  children: [
									Container(
									  // frame37134eWs (301:1081)
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
									  // frame37136yZ9 (301:1082)
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
									  // frame37137hzw (301:1083)
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
								// createyourusernamegetyourallow (301:1084)
								constraints: BoxConstraints (
								  maxWidth: 260*fem,
								),
								child: Text(
								  'Give us your email, or else many will suffer',
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
						  // entryfieldmtK (301:1085)
						  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 31*fem),
						  width: double.infinity,
						  height: 60*fem,
						  child: Stack(
							children: [
							  Positioned(
								// emailxw (301:1086)
								left: 0*fem,
								top: 0*fem,
								child: Align(
								  child: SizedBox(
									width: 92*fem,
									height: 26*fem,
									child: Text(
									  'Email',
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
								// frame37154P91 (301:1087)
								left: 0*fem,
								top: 25*fem,
								child: Align(
								  child: SizedBox(
									width: 300*fem,
									height: 35*fem,
									child: Container(
									  decoration: BoxDecoration (
										borderRadius: BorderRadius.circular(10*fem),
										color: Color(0xff63666a),
									  ),
									  child: TextField(
										decoration: InputDecoration (
										  border: InputBorder.none,
										  focusedBorder: InputBorder.none,
										  enabledBorder: InputBorder.none,
										  errorBorder: InputBorder.none,
										  disabledBorder: InputBorder.none,
										  contentPadding: EdgeInsets.fromLTRB(11*fem, 5*fem, 11*fem, 4*fem),
										  hintText: 'jack@georgetown.edu',
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
											setState(() {
												emailInput = value;
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
						  // continuebuttonQ47 (301:1089)
						  margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 55*fem, 0*fem),
						  child: TextButton(
							onPressed: () => handleGivenEmail(context),
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
		),
		),
	);
  }

  handleGivenEmail(BuildContext context) async
  {
	  List<String> signInMethods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailInput);

	  if (signInMethods.isNotEmpty)
	  {
		  moveToSignOnWithPassword(context);
	  }
	  else
	  {
		  moveToOnboardingPart2(context);
	  }
  }

  moveToSignOnWithPassword(BuildContext context)
  {
	  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInWithPasswordPage(emailInput: emailInput)));
  }

  moveToOnboardingPart2(BuildContext context)
  {
	  Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingSignUpPage(emailInput: emailInput)));
  }
}
