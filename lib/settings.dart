import 'package:allowance/user_card.dart';
import 'package:allowance/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class AllowanceSettings extends StatefulWidget {
  @override
  State<AllowanceSettings> createState() => _AllowanceSettingsState();

  final String username;
  bool isPublic;
  AllowanceSettings({required this.username, required this.isPublic});
}

class _AllowanceSettingsState extends State<AllowanceSettings> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: UserCard(
                username: widget.username,
                imageUrl: null,
                isButton: false,
                currentBalance: '')),
        SizedBox(height: 20),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 110),
          child: Card(
            elevation: 9,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            color: Color.fromRGBO(20, 22, 110, 1),
            child: Column(
              children: [
                //Divider(color: Colors.white, thickness: 2),
                Divider(color: Colors.transparent, thickness: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Public Profile',
                        style: SafeGoogleFont(
                          'Outfit',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.26 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Switch(
                        value: widget.isPublic,
                        activeColor: Colors.green.shade500,
                        onChanged: (value) {
                          _togglePublic();
                          setState(() {
                            widget.isPublic = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  'Makes your transactions public on the progress page',
                  style: SafeGoogleFont(
                    'Outfit',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.26 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
                Divider(color: Colors.transparent, thickness: 2),
                //Divider(color: Colors.white, thickness: 2),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(20, 22, 210, 1),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    ),
                    child: Text('Sign Out', style: TextStyle(fontSize: 18)),
                  )),
              SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Delete Account"),
                              content: Text(
                                  "Are you sure you want to delete your account? This action cannot be undone."),
                              actions: [
                                ElevatedButton(
                                  child: Text("Yes"),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    // reauthenticate
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text(
                                                'Enter Email and Password'),
                                            content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  TextField(
                                                    controller:
                                                        _emailController,
                                                    decoration: InputDecoration(
                                                      hintText: 'Email',
                                                    ),
                                                  ),
                                                  TextField(
                                                    controller:
                                                        _passwordController,
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                      hintText: 'Password',
                                                    ),
                                                  ),
                                                ]),
                                            actions: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text('Cancel'),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  _deleteAccount();
                                                  Navigator.of(context).pop();
                                                },
                                                child:
                                                    Text('Delete Account Now'),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.red,
                                                ),
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                ),
                                ElevatedButton(
                                  child: Text("No"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    ),
                    child: Text('Delete Account',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  )),
              SizedBox(height: 20),
            ]),
      ],
    );
  }

  void _deleteAccount() async {
    try {
      final Uri uri = Uri.parse('https://api.allowance.fund/delete');

      final String? auth_token =
          await FirebaseAuth.instance.currentUser!.getIdToken();
      final response = await http.post(
        uri,
        body: jsonEncode({
          "email": _emailController.text,
          "password": _passwordController.text,
        }),
      );
      if (response.statusCode == 200) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("Account deleted"),
                  content: Text(
                      "Your account has been deleted. We're sorry to see you go."),
                  actions: [
                    TextButton(
                      child: Text("OK"),
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ));
      } else {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("Account failed to delete"),
                  content: Text("Please try again later"),
                  actions: [
                    TextButton(
                      child: Text("OK"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ));
        // Handle API error here
      }
    } catch (e) {
      // Handle error here
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Account failed to delete"),
                content: Text("Please try again later"),
                actions: [
                  TextButton(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ));
    }
  }

  _togglePublic() async {
      final url = 'https://api.allowance.fund/togglePublicProfile';

      final headers = {
        'Content-Type': 'application/json',
      };

      final body = {
        'auth_token': await FirebaseAuth.instance.currentUser!.getIdToken(),
      };

      final response = await http.post(Uri.parse(url),
          headers: headers, body: jsonEncode(body));

      if (response.statusCode == 200) {
        // Request successful, handle the response if needed
      } else {
        // Request failed, handle the error
      }
    }
}
