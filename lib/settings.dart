import 'package:allowance/user_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
                                  "Are you sure you want to delete your account?"),
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
                                                onPressed: () =>
                                                    _deleteAccount(),
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
    AuthCredential cred = EmailAuthProvider.credential(email: _emailController.text, password: _passwordController.text);
    print("============================");
    print("Reauthenticating...");
    print("============================");
    if (FirebaseAuth.instance.currentUser == null) {
      print("Reauth Failed!!");
    } else {
      User user = FirebaseAuth.instance.currentUser!;
      print((await user.reauthenticateWithCredential(cred))
          .toString());
      print("============================");
      FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .delete();
      FirebaseAuth.instance.currentUser!.delete();
      FirebaseAuth.instance.signOut();
    }
  }
}
