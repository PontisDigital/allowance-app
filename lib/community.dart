import 'package:allowance/page-1/home-page-done.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:allowance/community_user_card.dart';

class CommunityPage extends StatelessWidget {
  final Allowance allowance;

  const CommunityPage({Key? key, required this.allowance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'hoya allowance',
          style: TextStyle(
            fontSize: 25 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.26 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
        backgroundColor: Color.fromRGBO(4, 30, 66, 1),
      ),
      backgroundColor: Color.fromRGBO(4, 30, 66, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'You decide when the next round of allowance is!',
                style: TextStyle(
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.26 * ffem / fem,
                  color: Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: LinearPercentIndicator(
                percent:
                    double.parse(allowance.totalContributions.substring(1)) /
                        double.parse(allowance.threshold.substring(1)),
                center: Text(allowance.totalContributions,
                    style: TextStyle(color: Colors.white)),
                progressColor: Colors.green,
                backgroundColor: Colors.black,
                lineHeight: 30.0,
                barRadius: Radius.circular(20),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Fill this bar up to unlock the next round!',
              style: TextStyle(
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.26 * ffem / fem,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image.network(
              'https://media.tenor.com/E7fROB_zqFAAAAAC/%EC%9B%90%EA%B8%B0%EC%98%A5.gif',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Today\'s Contributions',
              style: TextStyle(
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.26 * ffem / fem,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: allowance.contributions.length,
			  physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                ContributionData contribution = allowance.contributions[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: UserCardCommunity(
                    amountSpent: contribution.amount,
                    spentTime: contribution.timeSince,
                    username: contribution.username,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
