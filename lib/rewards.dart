import 'package:allowance/button.dart';
import 'package:allowance/home_allowance_entry.dart';
import 'package:allowance/page-1/home-page-done.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:allowance/utils.dart';
import 'package:share_plus/share_plus.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({super.key});

  @override
  State<RewardsPage> createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  String? referralCode;

  @override
  void initState() {
    super.initState();
    _loadSavedData();
    _getReferralCode();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(children: [
      SizedBox(height: 20 * ffem),
      Center(
        child: Text(
          "Everytime a friend uses your code on sign up, you both will get an additional \$5 of Allowance!",
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2125 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
      SizedBox(height: 20 * ffem),
      Center(
        child: Text(
          "Your referral code is:",
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2125 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
      SizedBox(height: 20 * ffem),
      Center(
        child: Text(
          referralCode ?? "",
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 50 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2125 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
      SizedBox(height: 20 * ffem),
      Visibility(
        visible: referralCode != null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: CustomButton(
              onPressed: () {
                Share.share(
                    "Yo. This shit bussin fr fr on god no cap deadass. Use my code, ${referralCode!}, when signing up to get \$23.75 to spend on booze! https://apps.apple.com/us/app/allowance-your-pocket-money/id6461267704 https://play.google.com/store/apps/details?id=fund.allowance",
                    subject: "You gotta see this");
              },
              text: "Share",
              minHeight: 50),
        ),
      ),
      SizedBox(height: 40 * ffem),
      Text(
        "You are going to be receiving more allowance from the following stores!",
        style: SafeGoogleFont(
          'Inter',
          fontSize: 20 * ffem,
          fontWeight: FontWeight.w700,
          height: 1.2125 * ffem / fem,
          color: Color(0xffffffff),
        ),
		textAlign: TextAlign.center,
      ),
      SizedBox(height: 20 * ffem),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: StoreCardWidget(
            allowance: Allowance(
                balance: "\$12.00",
                imageUrl: "https://specialistsubjectrecords.co.uk/cdn/shop/products/gorilla-biscuits-gorilla-logo-embroidered-patch-merch-661430_large.webp?v=1650193819",
                merchantName: "Hop",
				isLocked: false,
				barPercent: 0.0,
				walletMax: null,
				minSpend: null,
                ),
			isRewardPage: true,
			),
      ),
    ]);
  }

  void _getReferralCode() async {
    final url = 'https://api.allowance.fund/getRefCode';

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
      final data = json.decode(response.body);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        referralCode = data["referral_code"];
        referralCode =
            referralCode!.substring(0, 3) + "-" + referralCode!.substring(3);
      });
      await prefs.setString('referral_code', data["referral_code"]);
    } else {
      // Request failed, handle the error
      print("GOT RESPONSE ERROR");
      print(response.body);
    }
  }

  Future<void> _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedReferralCode = prefs.getString('referral_code');
    setState(() {
      referralCode = savedReferralCode;
      referralCode =
          referralCode!.substring(0, 3) + "-" + referralCode!.substring(3);
    });
  }
}
