import 'package:allowance/user_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class SendSelectUserPage extends StatefulWidget {
  @override
  _SendSelectUserPageState createState() => _SendSelectUserPageState();
}

class _SendSelectUserPageState extends State<SendSelectUserPage> {
  TextEditingController _textFieldController = TextEditingController();
  String _inputValue = '';
  String _oldInputValue = '';
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 1000), _sendInputToAPI);
  }

  @override
  void dispose() {
	_timer?.cancel();
    _textFieldController.dispose();
    super.dispose();
  }

  void _updateInputValue(String newValue) {
    setState(() {
      _inputValue = newValue;
    });
  }

  void _sendInputToAPI(Timer timer) async {
  if (_inputValue == _oldInputValue) return;
  _oldInputValue = _inputValue;
    final String apiUrl = 'https://api.allowance.fund/search';
    final Map<String, dynamic> requestData = {
      "query": _inputValue,
      "auth_token": await FirebaseAuth.instance.currentUser!.getIdToken(),
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        print('Request sent successfully');
        // You can handle the response here if needed
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (error) {
      print('Error sending request: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(33 * fem, 34 * fem, 33 * fem, 95 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13 * fem),
              child: Text(
                'hoya allowance',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Outfit',
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.26 * ffem / fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * fem),
                      color: Color(0xcc446da3),
                    ),
                    child: Card(
                      color: Colors.transparent,
                      child: TextField(
                        controller: _textFieldController,
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) => {_updateInputValue(value)},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(
                              7 * fem, 1 * fem, 7 * fem, 0 * fem),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        10 * fem, 8 * fem, 9.08 * fem, 8 * fem),
                    width: double.infinity,
                    height: 636 * fem,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/page-1/images/frame-37141.png',
                        ),
                      ),
                    ),
                    child: UserCard(
                      username: "test",
                      imageUrl: null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
