import 'package:allowance/button.dart';
import 'package:allowance/input.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:allowance/utils.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class InputReferral extends StatefulWidget {
  const InputReferral({super.key});

  @override
  State<InputReferral> createState() => _InputReferralState();
}

class _InputReferralState extends State<InputReferral> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff041e42),
        centerTitle: true,
        title: Text(
          'Did someone refer you?',
          style: SafeGoogleFont(
            'Outfit',
            fontSize: 25 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.26 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
      backgroundColor: Color(0xff041e42),
      body: Column(children: [
        SizedBox(height: 20 * ffem),
        Text(
          "Enter their referral code below to get an additional \$5 of Allowance!",
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2125 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
        SizedBox(height: 20 * ffem),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: CustomInput(
              hintText: 'Referral Code',
              controller: _controller,
              onSubmitted: (value) {
                _submitReferral(_controller.text);
              }),
        ),
        SizedBox(height: 20 * ffem),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: CustomButton(
              text: 'Submit',
              onPressed: () {
                _submitReferral(_controller.text);
              },
              minHeight: 50 * ffem),
        ),
        SizedBox(height: 20 * ffem),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: CustomButton(
              text: 'I have no friends',
              onPressed: () {
                _submitReferral("nofriends");
              },
              minHeight: 50 * ffem,
              color: Colors.grey[700]),
        ),
      ]),
    );
  }

  void _submitReferral(String ref) async {
    final url = 'https://api.allowance.fund/submitReferral';

    final headers = {
      'Content-Type': 'application/json',
    };

    final body = {
      'referral': ref,
      'auth_token': await FirebaseAuth.instance.currentUser!.getIdToken(),
    };

    final response = await http.post(Uri.parse(url),
        headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      // Request successful, handle the response if needed
      Navigator.pop(context);
    } else {
      // Request failed, handle the error
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                  title: Text("Error"),
                  content: (ref == "nofriends")
                      ? Text("Something went wrong")
                      : Text("Invalid referral code"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("OK"))
                  ]));
    }
  }
}
