import 'dart:async';

import 'package:allowance/custom_search.dart';
import 'package:allowance/home_allowance_entry.dart';
import 'package:allowance/page-1/loading-page-done.dart';
import 'package:allowance/page-1/pay-1-done.dart';
import 'package:flutter/material.dart';
import 'package:allowance/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

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

  Map<String, dynamic> toJson() {
    return {
      'amount': balance,
      'logo_url': imageUrl,
    };
  }
}

class UserHomeData {
  final String totalAllowance;
  final List<Allowance> allowances;
  final bool isEmailVerified;
  final List<String> otherUsers;
  UserHomeData(
      {required this.totalAllowance,
      required this.allowances,
      required this.isEmailVerified,
      required this.otherUsers});

  factory UserHomeData.fromJson(Map<String, dynamic> json) {
    return UserHomeData(
      totalAllowance: json['total_allowance'],
      allowances: (json['allowance'] as List)
          .map((allowanceJson) => Allowance.fromJson(allowanceJson))
          .toList(),
      isEmailVerified: json['email_verified'],
      otherUsers: (json['other_users'] as List).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total_allowance': totalAllowance,
      'allowance': allowances.map((allowance) => allowance.toJson()).toList(),
      'email_verified': isEmailVerified,
      'other_users': otherUsers,
    };
  }
}

class HomePage extends StatefulWidget {
  bool showVerifyDialog = false;

  final String? totalAllowance;

  HomePage({this.totalAllowance});

  @override
  _HomePageState createState() => _HomePageState();

  UserHomeData _userHomeData = UserHomeData(
      totalAllowance: "...",
      allowances: List<Allowance>.empty(),
      isEmailVerified: false,
      otherUsers: List<String>.empty());
}

class _HomePageState extends State<HomePage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _loadSavedData();
    _fetchUserBalance(null);
    _timer = Timer.periodic(Duration(milliseconds: 10000), _fetchUserBalance);
  }

  Future<void> _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedTotalAllowance = prefs.getString('totalAllowance');
    bool? savedIsEmailVerified = prefs.getBool('isEmailVerified');
    List<String>? savedOtherUsers = prefs.getStringList('otherUsers');
    List<String>? savedAllowancesJson = prefs.getStringList('allowances');

    List<Allowance> savedAllowances = [];
    if (savedAllowancesJson != null) {
      savedAllowances = savedAllowancesJson
          .map((allowanceJson) => Allowance.fromJson(json.decode(allowanceJson)))
          .toList();
    }

    setState(() {
      widget._userHomeData = UserHomeData(
        totalAllowance: savedTotalAllowance ?? "...",
        allowances: savedAllowances,
        isEmailVerified: savedIsEmailVerified ?? false,
        otherUsers: savedOtherUsers ?? [],
      );
    });
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
        final bool isEmailVerified = data['email_verified'];
        final List<String> otherUsers = data['other_users'].cast<String>();

        final List<dynamic> allowanceData = data['allowance'];
        List<Allowance> allowanceList =
            allowanceData.map((item) => Allowance.fromJson(item)).toList();

        setState(() {
          widget.showVerifyDialog = !isEmailVerified;
          widget._userHomeData = UserHomeData(
            totalAllowance: newBalance,
            allowances: allowanceList,
            isEmailVerified: isEmailVerified,
            otherUsers: otherUsers,
          );
        });

        // Save the fetched data to shared preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('totalAllowance', newBalance);
        await prefs.setBool('isEmailVerified', isEmailVerified);
        await prefs.setStringList('otherUsers', otherUsers);
        // You might want to handle allowances differently since it's a list of custom objects
        // You could serialize it to JSON and save it as a string, then deserialize it when loading
        List<String> allowancesJson = allowanceList
            .map((allowance) => jsonEncode(allowance.toJson()))
            .toList();
        await prefs.setStringList('allowances', allowancesJson);
      } else {
        // Handle API error here
      }
    } catch (e) {
      // Handle error here
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SingleChildScrollView(
      child: Container(
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
                                      child: Text(
                                          widget._userHomeData.totalAllowance,
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
                                    // frame37190x47 (324:435)
                                    width: double.infinity,
                                    height: 99.22 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // allowancebutton6RD (324:437)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 8 * fem, 0 * fem),
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
                                          onPressed: () {
                                            showSearch(
                                                context: context,
                                                delegate: CustomSearchDelegate(
                                                    searchTerms: widget
                                                        ._userHomeData
                                                        .otherUsers,
                                                    currentBalance: widget
                                                        ._userHomeData
                                                        .totalAllowance));
                                          },
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            width: 174.24 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x3f4b39ef),
                                              borderRadius:
                                                  BorderRadius.circular(
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
                              itemCount: widget._userHomeData.allowances.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    StoreCardWidget(
                                        allowance: widget
                                            ._userHomeData.allowances[index]),
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
}
