import 'package:allowance/button.dart';
import 'package:allowance/main.dart';
import 'package:allowance/survey.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:allowance/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SurveyPrompt extends StatelessWidget {
  const SurveyPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff041e42),
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
      ),
      backgroundColor: Color(0xff041e42),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              'Answer some quick yes or no questions for \$3.75?',
              style: SafeGoogleFont(
                'Outfit',
                fontSize: 25 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.26 * ffem / fem,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'It will take no more than 20 seconds!',
              style: SafeGoogleFont(
                'Outfit',
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.26 * ffem / fem,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
                "https://media.tenor.com/A1NWTd1hIFgAAAAC/hug.gif"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              onPressed: () {
                startSurvey(context);
              },
              text: 'Continue',
              minHeight: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              color: Colors.red,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content:
                              Text('Would you like us to ask you again later?'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: Text('Yes')),
                            TextButton(
                                onPressed: () {
                                  _denySurvey(context);
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: Text('No')),
                          ],
                        ));
              },
              text: 'No thanks',
              minHeight: 50,
            ),
          ),
        ],
      ),
    );
  }

  void startSurvey(BuildContext context) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => HopSurvey()), (route) => false);
  }

  void _denySurvey(BuildContext context) async {
    const url = 'https://api.allowance.fund/submitSurvey';

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
