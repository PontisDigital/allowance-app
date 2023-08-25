import 'dart:async';
import 'package:allowance/settings.dart';
import 'package:allowance/the_tutorial.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:allowance/utils.dart';
import 'package:allowance/page-1/loading-page-done.dart';
import 'package:allowance/page-1/home-page-done.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../firebase_options.dart';

class SettingsData {
  final String username;
  final bool isPublic;
  final String? photoUrl;

  SettingsData({
    required this.username,
    required this.isPublic,
    this.photoUrl,
  });
}

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
    SettingsData settingsData = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      try {
        return SettingsData(
            username: value['username'],
            isPublic: value['is_public'],
            photoUrl: value['photo_url']);
      } catch (e) {
        return SettingsData(
            username: value['username'], isPublic: value['is_public']);
      }
    });
    _widgetOptions.add(AllowanceSettings(
        username: settingsData.username,
        isPublic: settingsData.isPublic,
        photoUrl: settingsData.photoUrl));
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
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                leading: IconButton(
                    icon: Icon(Icons.question_mark),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TheTutorial()),
                      );
                    }),
                title: Text(
                  'allowance',
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
                backgroundColor: Color.fromRGBO(22, 37, 109, 1),
                unselectedItemColor: Colors.grey.shade400,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
              body: _widgetOptions.elementAt(_selectedIndex),
            );
          } else {
            return Scaffold(
              backgroundColor: Color.fromRGBO(4, 30, 66, 1),
              body: LandingPage(),
            );
          }
        },
      ),
    );
  }
}
