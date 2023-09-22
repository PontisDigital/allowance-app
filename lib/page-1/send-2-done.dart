import 'dart:convert';
import 'package:allowance/button.dart';
import 'package:allowance/home_allowance_entry.dart';
import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/user_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';

class SendEnterAmountPage extends StatefulWidget {
  @override
  _SendEnterAmountPageState createState() => _SendEnterAmountPageState();

  final String username;
  final String currentBalance;
  final String? imageUrl;
  final List<Allowance> allowances;
  SendEnterAmountPage(
      {required this.username,
      required this.currentBalance,
      this.imageUrl,
      required this.allowances});
}

class _SendEnterAmountPageState extends State<SendEnterAmountPage> {
  final TextEditingController amountController = TextEditingController();
  final PageController _pageController = PageController();
  int _currentAllowanceIndex = 0;
  bool _isButtonDisabled = false;

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
          'allowance',
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
      body: SingleChildScrollView(
        child: Column(
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
              imageUrl: widget.imageUrl,
              isButton: false,
              currentBalance: '',
              allowances: [],
            ),
            SizedBox(height: 10),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _currentAllowanceIndex++;
                  });
                  if (_currentAllowanceIndex > widget.allowances.length - 1) {
                    setState(() {
                      _currentAllowanceIndex = 0;
                    });
                  }
                },
                child: Transform.scale(
                    scale: 0.75,
                    child: StoreCardWidget(
                        allowance: widget.allowances[_currentAllowanceIndex],
                        isSendPage: true))),
            SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    43.1 * fem, 0 * fem, 43.1 * fem, 0 * fem),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 86.0),
              child: _isButtonDisabled
                  ? CircularProgressIndicator(color: Colors.white)
                  : CustomButton(
                      onPressed: () => sendAllowance(),
                      text: "Send",
                      minHeight: 64.0 * fem),
            ),
          ],
        ),
      ),
    );
  }

  sendAllowance() async {
    setState(() {
      _isButtonDisabled = true;
    });
    final url = 'https://api.allowance.fund/send';

    final headers = {
      'Content-Type': 'application/json',
    };

    final body = {
      'auth_token': await FirebaseAuth.instance.currentUser!.getIdToken(),
      'username_to_send_to': widget.username,
      'amount': '\$' + amountController.text,
      'merchant_name': widget.allowances[_currentAllowanceIndex].merchantName,
    };

    final response = await http.post(Uri.parse(url),
        headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      // Request successful, handle the response if needed
      Navigator.pop(context);
      Navigator.pop(context);
    } else {
      // Request failed, handle the error
      setState(() {
        _isButtonDisabled = false;
      });

      final message = jsonDecode(response.body)["message"];

      // popup dialogue saying insufficient funds
      if (message == "Insufficient Funds") {
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
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text(message),
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
}
