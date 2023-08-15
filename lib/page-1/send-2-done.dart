import 'dart:convert';
import 'package:allowance/user_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
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
    final usdInputFormatter = FilteringTextInputFormatter.allow(
        RegExp(r'^\d+(\.\d{0,2})?$')); // Allows up to 2 decimal places
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
        // send2doneappbar (301:1192)
        backgroundColor: Color(0xff041e42),
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
      ),
      backgroundColor: Color(0xff041e42),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'enter amount',
            style: SafeGoogleFont(
              'Outfit',
              fontSize: 25 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.26 * ffem / fem,
              color: Color(0xffffffff),
            ),
          ),
          SizedBox(height: 20),
          UserCard(
              username: widget.username,
              imageUrl: null,
              isButton: false,
              currentBalance: ''),
          SizedBox(height: 20),
          Text(
            '${widget.currentBalance} available',
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Outfit',
              fontSize: 33 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.26 * ffem / fem,
              color: Color(0x66ffffff),
            ),
          ),
          SizedBox(height: 20),
          Padding(
              padding:
                  EdgeInsets.fromLTRB(43.1 * fem, 0 * fem, 43.1 * fem, 0 * fem),
              child: TextField(
                controller: amountController,
                inputFormatters: [usdInputFormatter],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'Enter USD amount',
                  labelStyle: SafeGoogleFont(
                    'Outfit',
                    fontSize: 25 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.26 * ffem / fem,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(18.3050861359 * fem),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(18.3050861359 * fem),
                  ),
                ),
                style: SafeGoogleFont(
                  'Outfit',
                  fontSize: 25 * ffem, // Adjust the size as needed
                  fontWeight: FontWeight.w700,
                  height: 1.26 * ffem / fem,
                  color: Colors.white,
                ),
              )),
          SizedBox(height: 20),
          Container(
            // sendbuttonesZ (301:1210)
            margin:
                EdgeInsets.fromLTRB(43.1 * fem, 0 * fem, 43.1 * fem, 0 * fem),
            child: TextButton(
              onPressed: () => {if (amountController.text.isNotEmpty) sendAllowance()},
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
                  borderRadius: BorderRadius.circular(18.3050861359 * fem),
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

      // popup dialogue saying insufficient funds
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Insufficient Funds'),
              content: Text(
                  'You do not have enough funds to complete this transaction.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text('OK'),
                ),
              ],
            );
          });
    }
  }
}
