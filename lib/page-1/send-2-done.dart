import 'dart:convert';
import 'package:allowance/user_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';
import 'package:http/http.dart' as http;

class SendEnterAmountPage extends StatefulWidget {
  @override
  _SendEnterAmountPageState createState() => _SendEnterAmountPageState();

  final String username;
  final String currentBalance;
  SendEnterAmountPage({required this.username, required this.currentBalance});
}

class _SendEnterAmountPageState extends State<SendEnterAmountPage> {
  final TextEditingController amountController = TextEditingController();

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // send2doneoef (301:1193)
        padding:
            EdgeInsets.fromLTRB(25.6 * fem, 34 * fem, 25.6 * fem, 361.5 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hoyaallowanceiFq (301:1194)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
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
              // frame37207DCb (301:1196)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37204kyD (301:1197)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 49 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // enteramountJUw (301:1198)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          child: Text(
                            'enter amount',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Outfit',
                              fontSize: 40 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.26 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        UserCard(
                            username: widget.username,
                            imageUrl: null,
                            isButton: false)
                      ],
                    ),
                  ),
                  Container(
                    // frame37206pEK (301:1205)
                    margin: EdgeInsets.fromLTRB(
                        39.9 * fem, 0 * fem, 39.9 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame37205js5 (301:1206)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: double.infinity,
                          height: 139 * fem,
                          child: Column(
                            children: [
                              Positioned(
                                // availableGc7 (301:1207)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 259 * fem,
                                    height: 42 * fem,
                                    child: Text(
                                      widget.currentBalance + ' available',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Outfit',
                                        fontSize: 33 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.26 * ffem / fem,
                                        color: Color(0x66ffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.transparent,
                                child: TextField(
                                  controller: amountController,
                                  style: SafeGoogleFont(
                                    'Outfit',
                                    fontSize: 33 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    prefixText: '\$',
                                    prefixStyle: SafeGoogleFont(
                                      'Outfit',
                                      fontSize: 33 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.26 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                    hintText: '0.00',
                                    hintStyle: SafeGoogleFont(
                                      'Outfit',
                                      fontSize: 33 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.26 * ffem / fem,
                                      color: Color(0x66ffffff),
                                    ),
                                  ),
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // sendbuttonesZ (301:1210)
                          margin: EdgeInsets.fromLTRB(
                              43.1 * fem, 0 * fem, 43.1 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () => sendAllowance(),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  27.6 * fem, 7.2 * fem, 27.2 * fem, 7.2 * fem),
                              width: double.infinity,
                              height: 98.4 * fem,
                              decoration: BoxDecoration(
                                color: Color(0x3f4b39ef),
                                borderRadius:
                                    BorderRadius.circular(18.3050861359 * fem),
                                border: Border(),
                              ),
                              child: Center(
                                child: Text(
                                  'send',
                                  style: SafeGoogleFont(
                                    'Outfit',
                                    fontSize: 54.0000038147 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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

  sendAllowance() async {
    final url = 'https://api.allowance.fund/send';

    final headers = {
      'Content-Type': 'application/json',
    };

    final body = {
      'auth_token': await FirebaseAuth.instance.currentUser!.getIdToken(),
      'username_to_send_to': widget.username,
      'amount': '\$' + amountController.text,
    };

    final response = await http.post(Uri.parse(url),
        headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      // Request successful, handle the response if needed
      print('Allowance sent successfully');
	  Navigator.pop(context);
	  Navigator.pop(context);
    } else {
      // Request failed, handle the error
      print('Error sending allowance: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }
}
