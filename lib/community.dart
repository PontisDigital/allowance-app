import 'dart:async';

import 'package:allowance/page-1/home-page-done.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:allowance/community_user_card.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

class Contribution {
  final String username;
  final String? photoUrl;
  final String amount;
  final String timeSince;

  Contribution({
    required this.username,
    this.photoUrl,
    required this.amount,
    required this.timeSince,
  });

  factory Contribution.fromJson(Map<String, dynamic> json) {
    return Contribution(
      username: json['username'],
      photoUrl: json['photo_url'],
      amount: json['amount'],
      timeSince: json['time_since'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "photo_url": photoUrl,
      "amount": amount,
      "time_since": timeSince,
    };
  }
}

class ContributionData {
  final String merchantName;
  final double totalAllowanceSpent;
  final double totalContributions;
  final double threshold;
  final List<Contribution> contributions;

  ContributionData({
    required this.merchantName,
    required this.totalAllowanceSpent,
    required this.totalContributions,
    required this.threshold,
    required this.contributions,
  });

  factory ContributionData.fromJson(Map<String, dynamic> json) {
    return ContributionData(
      merchantName: json['merchant_name'],
      totalAllowanceSpent: json['total_allowance_spent'],
      totalContributions: json['total_contributions'],
      threshold: json['threshold'],
      contributions: (json['contributions'] as List)
          .map((c) => Contribution.fromJson(c))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "merchant_name": merchantName,
      "total_allowance_spent": totalAllowanceSpent,
      "total_contributions": totalContributions,
      "threshold": threshold,
      "contributions": contributions.map((c) => c.toJson()).toList(),
    };
  }
}

class CommunityPage extends StatefulWidget {
  final bool spendingAllowance;
  final String merchantName;

  CommunityPage(
      {Key? key, required this.merchantName, required this.spendingAllowance})
      : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  ContributionData cd = ContributionData(
    merchantName: '...',
    totalAllowanceSpent: 0,
    totalContributions: 0,
    threshold: 0,
    contributions: [],
  );

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _loadSavedData();
    _fetchCommunityData(null, widget.merchantName);
    _timer = Timer.periodic(Duration(milliseconds: 5000),
        (timer) => _fetchCommunityData(timer, widget.merchantName));
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'allowance',
            style: TextStyle(
              fontSize: 25 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.26 * ffem / fem,
              color: Color(0xffffffff),
            ),
          ),
          backgroundColor: Color.fromRGBO(4, 30, 66, 1)),
      backgroundColor: Color.fromRGBO(4, 30, 66, 1),
      body: RefreshIndicator(
        backgroundColor: widget.spendingAllowance
            ? Color(0xff083675)
            : Colors.brown.shade800,
        color: Color(0xffffff),
        onRefresh: () => _fetchCommunityData(null, widget.merchantName),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Visibility(
                  visible: cd.threshold == 0,
                  child: Column(children: [
                    SizedBox(height: 20),
                    Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  ])),
              Visibility(
                visible: cd.threshold != 0,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        (!widget.spendingAllowance
                            ? 'To get more allowance, keep spending at ${cd.merchantName}'
                            : 'Allowance is first come, first serve'),
                        style: TextStyle(
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
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: LinearPercentIndicator(
                        percent: (!widget.spendingAllowance)
                            ? cd.totalContributions / cd.threshold
                            : min(cd.totalAllowanceSpent / cd.threshold, 1.0),
                        //trailing: Text('\$${cd.threshold}',
                        //    style: TextStyle(color: Colors.white)),
                        trailing: widget.spendingAllowance
                            ? Icon(Icons.lock, color: Colors.white)
                            : Icon(Icons.lock_open, color: Colors.white),
                        center: Text(
                            !widget.spendingAllowance
                                ? '\$${cd.totalContributions}'
                                : '\$${cd.totalAllowanceSpent}',
                            style: TextStyle(color: Colors.white)),
                        leading: widget.spendingAllowance
                            ? Icon(Icons.lock_open, color: Colors.white)
                            : Icon(Icons.lock, color: Colors.white),
                        progressColor: widget.spendingAllowance
                            ? Color(0xff4056ff)
                            : Colors.green.shade800,
                        backgroundColor: Color(0xff7c7c7c),
                        lineHeight: 30.0,
                        barRadius: Radius.circular(20),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        (!widget.spendingAllowance)
                            ? 'Go to ${cd.merchantName} and spend to get more allowance! Once the bar is full, you\'ll get more allowance.'
                            : '${cd.merchantName} is accepting \$${(cd.threshold - cd.totalAllowanceSpent).toStringAsFixed(2)} more allowance this round.',
                        style: TextStyle(
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.26 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(
                        (!widget.spendingAllowance)
                            ? 'Recent Contributions'
                            : (cd.contributions.length > 0)
                                ? 'Recent Spending'
                                : 'You\'re the first to spend at ${cd.merchantName}!',
                        style: TextStyle(
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.26 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: cd.contributions.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        Contribution contribution = cd.contributions[index];
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: UserCardCommunity(
                            amountSpent: contribution.amount,
                            spentTime: contribution.timeSince,
                            username: contribution.username,
                            photoUrl: contribution.photoUrl,
                            spendingAllowance: widget.spendingAllowance,
                          ),
                        );
                      },
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

  Future<void> _fetchCommunityData(Timer? timer, String merhcantName) async {
    final url = 'https://api.allowance.fund/community';

    final headers = {
      'Content-Type': 'application/json',
    };

    final body = {
      'merchant_name': merhcantName,
      'auth_token': await FirebaseAuth.instance.currentUser!.getIdToken(),
    };

    final response = await http.post(Uri.parse(url),
        headers: headers, body: jsonEncode(body));

    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // Request successful, handle the response if needed
      if (mounted) {
        setState(() {
          cd = ContributionData.fromJson(data);
        });
      }

      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setDouble(widget.merchantName + 'total_allowance_spent',
          cd.totalAllowanceSpent);
      await prefs.setDouble(
          widget.merchantName + 'total_contributions', cd.totalContributions);
      await prefs.setDouble(widget.merchantName + 'threshold', cd.threshold);

      List<String> contributionsJson =
          cd.contributions.map((c) => jsonEncode(c.toJson())).toList();

      await prefs.setStringList(
          widget.merchantName + 'contributions', contributionsJson);
    } else {
      // Request failed, handle the error
    }
  }

  void _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? totalAllowanceSpent =
        prefs.getDouble(widget.merchantName + 'total_allowance_spent');
    double? totalContributions =
        prefs.getDouble(widget.merchantName + 'total_contributions');
    double? threshold = prefs.getDouble(widget.merchantName + 'threshold');
    List<String>? savedContributionsJson =
        prefs.getStringList(widget.merchantName + 'contributions');

    List<Contribution> savedContributions = [];
    if (savedContributionsJson != null) {
      savedContributions = savedContributionsJson
          .map((c) => Contribution.fromJson(json.decode(c)))
          .toList();
    }

    setState(() {
      cd = ContributionData(
        merchantName: widget.merchantName,
        totalAllowanceSpent: totalAllowanceSpent ?? 0,
        totalContributions: totalContributions ?? 0,
        threshold: threshold ?? 0,
        contributions: savedContributions,
      );
    });
  }
}
