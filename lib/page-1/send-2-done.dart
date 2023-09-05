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
            imageUrl: widget.imageUrl,
            isButton: false,
            currentBalance: '',
            allowances: [],
          ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 86.0),
            child: CustomButton(
                onPressed: () {}, text: "Send", minHeight: 64.0 * fem),
          ),
          SizedBox(height: 20),
          // Have user select which allowance to send from
          Text(
            'select allowance to send from',
            style: SafeGoogleFont(
              'Outfit',
              fontSize: 25 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.26 * ffem / fem,
              color: Color(0xffffffff),
            ),
          ),
          // horizontal swipable list of allowances
          PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentAllowanceIndex = index;
                });
              },
			  children: widget.allowances.map((allowance) => StoreCardWidget(allowance: allowance)).toList(),
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
      Navigator.pop(context);
      Navigator.pop(context);
    } else {
      // Request failed, handle the error

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
