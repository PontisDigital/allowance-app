import 'package:allowance/user_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class AllowanceSettings extends StatefulWidget {
  @override
  State<AllowanceSettings> createState() => _AllowanceSettingsState();

  final String username;
  AllowanceSettings({required this.username});
}

class _AllowanceSettingsState extends State<AllowanceSettings> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                                                onPressed: ()
                                                    {
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
}
