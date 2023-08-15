import 'dart:async';

import 'package:allowance/home_allowance_entry.dart';
import 'package:allowance/page-1/loading-page-done.dart';
import 'package:allowance/page-1/pay-1-done.dart';
import 'package:allowance/page-1/send-1-done.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';

class Allowance {
  final String balance;
  final String imageUrl;

  Allowance({required this.balance, required this.imageUrl});

  factory Allowance.fromJson(Map<String, dynamic> json) {
    return Allowance(
      balance: json['amount'],
      imageUrl: json['logo_url'],
    );
  }
}

class UserHomeData {
  final String totalAllowance;
  final List<Allowance> allowances;
  UserHomeData({required this.totalAllowance, required this.allowances});
}

class UserHomeDataProvider extends ChangeNotifier {
  UserHomeData _userHomeData =
      UserHomeData(totalAllowance: "...", allowances: List<Allowance>.empty());

  UserHomeData get userHomeData => _userHomeData;

  void updateHomeData(String newBalance, List<Allowance> newAllowances) {
    _userHomeData =
        UserHomeData(totalAllowance: newBalance, allowances: newAllowances);
    notifyListeners();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _fetchUserBalance(null);
    _timer = Timer.periodic(Duration(milliseconds: 10000), _fetchUserBalance);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _fetchUserBalance(Timer? timer) async {
    try {
      final Uri uri = Uri.parse('https://api.allowance.fund/home');

      final String? auth_token =
          await FirebaseAuth.instance.currentUser!.getIdToken();
      final response = await http.post(
        uri,
        body: jsonEncode({
          "request_type": "get_home_data",
          "auth_token": auth_token,
        }),
      );
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final String newBalance = data['total_allowance'].toString();
        final List<dynamic> allowanceData = data['allowance'];
        List<Allowance> allowanceList =
            allowanceData.map((item) => Allowance.fromJson(item)).toList();

        Provider.of<UserHomeDataProvider>(context, listen: false)
            .updateHomeData(newBalance, allowanceList);
      } else {
        // Handle API error here
      }
    } catch (e) {
      // Handle error here
    }
  }

  @override
  Widget build(BuildContext context) {
    final userHomeDataProvider = Provider.of<UserHomeDataProvider>(context);
    final userHomeData = userHomeDataProvider.userHomeData;

    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homepagedoneCkX (324:418)
        padding: EdgeInsets.fromLTRB(14 * fem, 34 * fem, 14 * fem, 34 * fem),
        width: double.infinity,
        height: 744.46 * fem,
        decoration: BoxDecoration(
          color: Color(0xff041e42),
        ),
        child: Container(
          // frame37260iTy (19:176)
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // frame371924Xq (324:421)
                margin: EdgeInsets.fromLTRB(
                    23.01 * fem, 0 * fem, 22.47 * fem, 17 * fem),
                width: double.infinity,
                height: 151.7 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // allowancebalanceKcB (324:423)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Container(
                        width: 311 * fem,
                        height: 126.7 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // RQK (324:424)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 311 * fem,
                                  height: 107 * fem,
                                  child: Center(
                                    child:
                                        Text('${userHomeData.totalAllowance}',
                                            style: SafeGoogleFont(
                                              'Inter',
                                              fontSize: 87.7027130127 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2125 * ffem / fem,
                                              color: Color(0xffffffff),
                                            )),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // totalallowanceu4b (324:425)
                              left: 62.2337646484 * fem,
                              top: 95.7026977539 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 186 * fem,
                                  height: 31 * fem,
                                  child: Text(
                                    'total allowance',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 25 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame37259xoZ (19:175)
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame37258W4P (19:174)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 17 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame37245qcT (324:546)
                            margin: EdgeInsets.fromLTRB(
                                2.28 * fem, 0 * fem, 2.28 * fem, 15 * fem),
                            width: double.infinity,
                            height: 55.57 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff09367b),
                              borderRadius:
                                  BorderRadius.circular(9.2609996796 * fem),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  // helpcenterMKu (324:542)
                                  left: 0 * fem,
                                  top: 4.6304931641 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 46.31 * fem,
                                      height: 46.3 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/helpcenter.png',
                                        width: 46.31 * fem,
                                        height: 46.3 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // scanyourqrcodeeverytimeyoushop (324:540)
                                  left: 46.3049316406 * fem,
                                  top: 4.6304931641 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 302 * fem,
                                      height: 45 * fem,
                                      child: Text(
                                        'Scan your QR code every time you shop to recharge your allowance.',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 18.5219993591 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame37257uVq (19:173)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame37189Skf (324:427)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0.48 * fem, 17 * fem),
                                  padding: EdgeInsets.fromLTRB(2.89 * fem,
                                      10 * fem, 2.89 * fem, 10 * fem),
                                  width: double.infinity,
                                  height: 132.27 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        26.3999996185 * fem),
                                    gradient: LinearGradient(
                                      begin: Alignment(-1, -0.002),
                                      end: Alignment(1.002, 0.053),
                                      colors: <Color>[
                                        Color(0xfff9b4b4),
                                        Color(0xffeba4e8),
                                        Color(0xffb4f2e1)
                                      ],
                                      stops: <double>[0, 0.526, 0.99],
                                    ),
                                  ),
                                  child: Container(
                                    // group56s5H (19:171)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          22.7600765228 * fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // keepshoppinghopcaskbarreltorec (324:431)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 5.23 * fem, 9.73 * fem),
                                          constraints: BoxConstraints(
                                            maxWidth: 208 * fem,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              style: SafeGoogleFont(
                                                'Inter',
                                                fontSize: 21 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height:
                                                    0.9523809524 * ffem / fem,
                                                letterSpacing: -1.5 * fem,
                                                color: Color(0xff525354),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'Keep shopping \n',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 21 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.8 * ffem / fem,
                                                    letterSpacing: -1.5 * fem,
                                                    color: Color(0xff525354),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '@ ',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 21 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.0 * ffem / fem,
                                                    letterSpacing: -1.5 * fem,
                                                    color: Color(0xff525354),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'Hop, Cask & Barrel\n',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 21 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.0 * ffem / fem,
                                                    letterSpacing: -1.5 * fem,
                                                    color: Color(0xff525354),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'to receive ',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 21 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.9523809524 *
                                                        ffem /
                                                        fem,
                                                    letterSpacing: -1.5 * fem,
                                                    color: Color(0xff525354),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\$150',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 21 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.9523809524 *
                                                        ffem /
                                                        fem,
                                                    letterSpacing: -1.5 * fem,
                                                    color: Color(0xff525354),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      ' of allowance this semester.',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 21 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.9523809524 *
                                                        ffem /
                                                        fem,
                                                    letterSpacing: -1.5 * fem,
                                                    color: Color(0xff525354),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // tile11eJK (19:170)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 6.72 * fem),
                                          width: 137 * fem,
                                          height: 105.55 * fem,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                22.7600765228 * fem),
                                            child: Image.network(
                                              'https://play-lh.googleusercontent.com/tGzXJX-9xA60sCxgxXM66Jw_ogbqqBb7D3SWEhZLj-Lo0PrEswX06roMTTAMyl0VaQ=w240-h480-rw',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame37190x47 (324:435)
                                  width: double.infinity,
                                  height: 99.22 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // allowancebutton6RD (324:437)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                        child: TextButton(
                                          onPressed: () =>
                                              navigateToQRCodePage(context),
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            width: 174.24 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x7f1900ff),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      18.4576263428 * fem),
                                              border: Border(),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'allowance',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Outfit',
                                                  fontSize: 30 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.26 * ffem / fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        // sendbuttonWjq (324:441)
                                        onPressed: () => navigateToSendPage(),
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: 174.24 * fem,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0x3f4b39ef),
                                            borderRadius: BorderRadius.circular(
                                                18.4576263428 * fem),
                                            border: Border(),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'send',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Outfit',
                                                fontSize: 30 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.26 * ffem / fem,
                                                color: Color(0xffffffff),
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
                    Container(
                      // stores4b9 (324:462)
                      margin: EdgeInsets.fromLTRB(
                          0.79 * fem, 0 * fem, 0.79 * fem, 0 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: userHomeData.allowances.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  StoreCardWidget(
                                      allowance:
                                          userHomeData.allowances[index]),
                                  SizedBox(
                                    height: 14 * fem,
                                  ),
                                ],
                              );
                            },
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
      ),
    );
  }

  signOut(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => SingleChildScrollView(child: LandingPage())));
    FirebaseAuth.instance.signOut();
  }

  navigateToQRCodePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QRCodePage()));
  }

  navigateToSendPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SendSelectUserPage()));
  }
}
