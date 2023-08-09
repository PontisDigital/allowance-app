import 'package:allowance/home_allowance_entry.dart';
import 'package:allowance/page-1/loading-page-done.dart';
import 'package:allowance/page-1/pay-1-done.dart';
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

class Allowance
{
  final String balance;
  final String imageUrl;

  Allowance({required this.balance, required this.imageUrl});

  factory Allowance.fromJson(Map<String, dynamic> json)
  {
	return Allowance(
	  balance: json['amount'],
	  imageUrl: json['logo_url'],
	);
  }
}

class UserHomeData
{
  final String totalAllowance;
  final List<Allowance> allowances;
  UserHomeData({required this.totalAllowance, required this.allowances});
}

class UserHomeDataProvider extends ChangeNotifier {
  UserHomeData _userHomeData = UserHomeData(totalAllowance: "...", allowances: List<Allowance>.empty());

  UserHomeData get userHomeData => _userHomeData;

  void updateHomeData(String newBalance, List<Allowance> newAllowances) {
    _userHomeData = UserHomeData(totalAllowance: newBalance, allowances: newAllowances);
    notifyListeners();
  }
}

class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    _fetchUserBalance();
  }

  Future<void> _fetchUserBalance() async {
    try {
	  final Uri uri = Uri.parse('https://api.rainyday.deals/allowance');

	  final String? auth_token = await FirebaseAuth.instance.currentUser!.getIdToken();
      final response = await http.post(


		uri,
		body: jsonEncode(
		{
		  "request_type": "get_home_data",
		  "auth_token": auth_token,
		}
		),

	  );
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final String newBalance = data['total_allowance'].toString();
		final List<dynamic> allowanceData = data['allowance'];
		List<Allowance> allowanceList = allowanceData.map((item) => Allowance.fromJson(item)).toList();

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
        // homepagedonewiF (324:418)
        padding: EdgeInsets.fromLTRB(15*fem, 34*fem, 15*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame37192TRh (324:421)
              margin: EdgeInsets.fromLTRB(23.01*fem, 0*fem, 22.47*fem, 17*fem),
              width: double.infinity,
              height: 151.7*fem,
              child: Stack(
                children: [
                  Positioned(
                    // hoyaallowancemxB (324:422)
                    left: 66.2337646484*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 178*fem,
                        height: 32*fem,
                        child: Text(
                          'hoya allowance',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Outfit',
                            fontSize: 25*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.26*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // allowancebalanceEqm (324:423)
                    left: 0*fem,
                    top: 25*fem,
                    child: Container(
                      width: 311*fem,
                      height: 126.7*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // Zd9 (324:424)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 311*fem,
                                height: 107*fem,
                                child: Center(child: Text(
                                  '${userHomeData.totalAllowance}',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 87.7027130127*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                )),
                              ),
                            ),
                          ),
                          Positioned(
                            // totalallowanceTyR (324:425)
                            left: 62.2337646484*fem,
                            top: 95.7026977539*fem,
                            child: Align(
                              child: SizedBox(
                                width: 186*fem,
                                height: 31*fem,
                                child: Text(
                                  'total allowance',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 25*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125*ffem/fem,
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
              // frame37246Mou (324:547)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37245Jj9 (324:546)
                    margin: EdgeInsets.fromLTRB(2.28*fem, 0*fem, 2.28*fem, 15*fem),
                    width: double.infinity,
                    height: 55.57*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff09367b),
                      borderRadius: BorderRadius.circular(9.2609996796*fem),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // helpcenterD5R (324:542)
                          left: 0*fem,
                          top: 4.6305236816*fem,
                          child: Align(
                            child: SizedBox(
                              width: 46.31*fem,
                              height: 46.3*fem,
                              child: Image.asset(
                                'assets/page-1/images/helpcenter.png',
                                width: 46.31*fem,
                                height: 46.3*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // scanyourqrcodeeverytimeyoushop (324:540)
                          left: 46.3049316406*fem,
                          top: 4.6305236816*fem,
                          child: Align(
                            child: SizedBox(
                              width: 302*fem,
                              height: 45*fem,
                              child: Text(
                                'Scan your QR code every time you shop to refill your allowance.',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 18.5219993591*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
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
                    // frame37191aaB (324:426)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame37189huh (324:427)
                          margin: EdgeInsets.fromLTRB(2.07*fem, 0*fem, 2.07*fem, 17*fem),
                          padding: EdgeInsets.fromLTRB(14*fem, 15*fem, 14*fem, 21.49*fem),
                          width: double.infinity,
                          height: 203.4*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(26.3999996185*fem),
                            gradient: LinearGradient (
                              begin: Alignment(-1, -0.002),
                              end: Alignment(1.002, 0.053),
                              colors: <Color>[Color(0xfff9b4b4), Color(0xffeba4e8), Color(0xffb4f2e1)],
                              stops: <double>[0, 0.526, 0.99],
                            ),
                          ),
                          child: Container(
                            // storefeaturevGf (324:428)
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame37188rg7 (324:429)
                                  margin: EdgeInsets.fromLTRB(0*fem, 41.7*fem, 25*fem, 43.21*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // thatsenoughforBiP (324:430)
                                        'that’s enough for',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1*ffem/fem,
                                          color: Color(0xff525354),
                                        ),
                                      ),
                                      Container(
                                        // achaiteaatmidnightmugu8b (324:431)
                                        constraints: BoxConstraints (
                                          maxWidth: 203*fem,
                                        ),
                                        child: Text(
                                          'a Chai Tea at Midnight Mug',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 30*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1*ffem/fem,
                                            color: Color(0xff525354),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame37163QLF (324:432)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // screenshot202307201352051MmH (324:433)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: 96.34*fem,
                                        height: 137.91*fem,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20.28125*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/screenshot-2023-07-20-135205-1.png',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // Frf (324:434)
                                        '\$3.99',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Outfit',
                                          fontSize: 22.3093757629*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.26*ffem/fem,
                                          color: Color(0xff525354),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // frame37190n5u (324:435)
                          width: double.infinity,
                          height: 99.22*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // payX3V (324:436)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                width: 174.24*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18.4576263428*fem),
                                ),
                                child: TextButton(
                                  // sendbuttonSRM (324:437)
                                  onPressed: () => navigateToQRCodePage(context),
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(37.51*fem, 7.26*fem, 42.73*fem, 7.26*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0x7f1900ff),
                                      borderRadius: BorderRadius.circular(18.4576263428*fem),
                                      border: Border (
                                      ),
                                    ),
                                    child: Text(
                                      'pay',
                                      style: SafeGoogleFont (
                                        'Outfit',
                                        fontSize: 54.4499931335*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.26*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // sendgqV (324:440)
                                width: 174.24*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18.4576263428*fem),
                                ),
                                child: TextButton(
                                  // sendbutton2uM (324:441)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(27.83*fem, 7.26*fem, 27.41*fem, 7.26*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0x3f4b39ef),
                                      borderRadius: BorderRadius.circular(18.4576263428*fem),
                                      border: Border (
                                      ),
                                    ),
                                    child: Text(
                                      'send',
                                      style: SafeGoogleFont (
                                        'Outfit',
                                        fontSize: 54.4499931335*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.26*ffem/fem,
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
                  Container(
                    // stores4b9 (324:462)
                    margin: EdgeInsets.fromLTRB(0.79*fem, 0*fem, 0.79*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
						ListView.builder(
						  shrinkWrap: true,
						  physics: NeverScrollableScrollPhysics(),
						  itemCount: userHomeData.allowances.length,
						  itemBuilder: (context, index)
						  {
							return Column(children: [
							  StoreCardWidget(allowance: userHomeData.allowances[index]),
							  SizedBox(
								height: 14*fem,
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
          );
  }

  signOut(BuildContext context)
  {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SingleChildScrollView(child: LandingPage())));
    FirebaseAuth.instance.signOut();
  }

  navigateToQRCodePage(BuildContext context)
  {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SingleChildScrollView(child: QRCodePage())));
  }

}
