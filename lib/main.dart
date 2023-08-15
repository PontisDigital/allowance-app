import 'dart:async';
import 'dart:convert';

import 'package:allowance/page-1/pay-1-done.dart';
import 'package:allowance/page-1/search-page-done.dart';
import 'package:allowance/page-1/send-2-done.dart';
import 'package:allowance/settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:allowance/utils.dart';
import 'package:allowance/page-1/loading-page-done.dart';
import 'package:allowance/page-1/home-page-done.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../firebase_options.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth.instance.setPersistence(Persistence.LOCAL);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  initState() {
    super.initState();
    addSettingsToList();
  }

  Future<void> addSettingsToList() async {
    // get username from firestore
    String username = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      return value['username'];
    });
    _widgetOptions.add(AllowanceSettings(username: username));
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return ChangeNotifierProvider(
              create: (context) => UserHomeDataProvider(),
              child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
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
                  backgroundColor: Color.fromRGBO(4, 30, 66, 1),
                ),
                backgroundColor: Color.fromRGBO(4, 30, 66, 1),
                bottomNavigationBar: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: 'Settings',
                    ),
                  ],
                  selectedItemColor: Colors.white,
                  backgroundColor: Color.fromRGBO(14, 15, 160, 1),
                  unselectedItemColor: Colors.grey.shade400,
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                ),
                body: _widgetOptions.elementAt(_selectedIndex),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: LandingPage(),
            );
          }
        },
      ),
    );
  }
}
