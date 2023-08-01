import 'package:flutter/material.dart';
import 'package:myapp/page-1/onboarding-1-done.dart';

import 'package:myapp/utils.dart';
import 'package:myapp/page-1/loading-page-done.dart';
import 'package:myapp/page-1/home-page-done.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		bool isLoggedIn = true;
		return MaterialApp(
			title: 'Flutter',
			debugShowCheckedModeBanner: false,
			scrollBehavior: MyCustomScrollBehavior(),
			theme: ThemeData(
			primarySwatch: Colors.blue,
			),
			home: Scaffold(
				body: SingleChildScrollView(
					child: isLoggedIn ? HomePage() : LandingPage(),
				),
			),
		);
	}
}
