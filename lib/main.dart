import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/loading-page-done.dart';
// import 'package:myapp/page-1/search-page-done.dart';
// import 'package:myapp/page-1/home-page-done.dart';
// import 'package:myapp/page-1/settings-1-done.dart';
// import 'package:myapp/page-1/settings-2-done.dart';
// import 'package:myapp/page-1/settings-3-done.dart';
// import 'package:myapp/page-1/settings-4-done.dart';
//import 'package:myapp/page-1/onboarding-1-done.dart';
// import 'package:myapp/page-1/onboarding-2-done.dart';
// import 'package:myapp/page-1/settings-5-done.dart';
// import 'package:myapp/page-1/pay-1-done.dart';
// import 'package:myapp/page-1/send-2-done.dart';
// import 'package:myapp/page-1/send-1-done.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}
