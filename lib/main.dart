import 'package:allowance/page-1/pay-1-done.dart';
import 'package:allowance/page-1/search-page-done.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:allowance/utils.dart';
import 'package:allowance/page-1/loading-page-done.dart';
import 'package:allowance/page-1/home-page-done.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart'; import '../firebase_options.dart';

void main() async
{
	WidgetsFlutterBinding.ensureInitialized();
	  await Firebase.initializeApp(
		options: DefaultFirebaseOptions.currentPlatform,
	  );
	FirebaseAuth.instance.setPersistence(Persistence.LOCAL);

	runApp(MyApp());
}

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
			home: StreamBuilder<User?>(
				stream: FirebaseAuth.instance.authStateChanges(),
				builder: (context, snapshot)
				{
					if (snapshot.connectionState == ConnectionState.waiting)
					{
						return CircularProgressIndicator();
					}
					else if (snapshot.hasData)
					{
						return ChangeNotifierProvider(
								create: (context) => UserHomeDataProvider(),
								child: SingleChildScrollView(
									child: HomePage(),
								   ),
						);
					}
					else
					{
						return SingleChildScrollView(
							child: LandingPage(),
						);
					}
				},
			),
		);
	}
}
