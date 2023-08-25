import 'package:allowance/page-1/home-page-done.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:allowance/community_user_card.dart';

class CommunityPage extends StatefulWidget {
  final Allowance allowance;
  bool spendingAllowance = true;

  CommunityPage({Key? key, required this.allowance}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  void initState() {
    super.initState();
    widget.spendingAllowance =
        double.parse(widget.allowance.totalAllowanceSpent.substring(1)) <
            double.parse(widget.allowance.threshold.substring(1));
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
                (!widget.spendingAllowance
                    ? 'To get more allowance, keep spending at ${widget.allowance.merchantName}'
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
                    ? double.parse(
                            widget.allowance.totalContributions.substring(1)) /
                        double.parse(widget.allowance.threshold.substring(1))
                    : (double.parse(widget.allowance.totalAllowanceSpent
                            .substring(1))) /
                        double.parse(widget.allowance.threshold.substring(1)),
                trailing: Text(widget.allowance.threshold,
                    style: TextStyle(color: Colors.white)),
                center: Text(
                    !widget.spendingAllowance
                        ? widget.allowance.totalContributions
                        : '\$${double.parse(widget.allowance.totalAllowanceSpent.substring(1))}',
                    style: TextStyle(color: Colors.white)),
                progressColor: Colors.green,
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
                    ? 'Fill this bar up to unlock the next round!'
                    : '${widget.allowance.merchantName} is accepting \$${(double.parse(widget.allowance.threshold.substring(1)) - double.parse(widget.allowance.totalAllowanceSpent.substring(1))).toStringAsFixed(2)} more allowance this round.',
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
            Text(
              (!widget.spendingAllowance)
                  ? 'Recent Contributions'
                  : (widget.allowance.totalAllowanceSpent != '\$0.00')
                      ? 'Recent Spending'
                      : 'You’ll see Hoyas spending here',
              style: TextStyle(
                fontSize: 24 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.26 * ffem / fem,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.allowance.contributions.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                ContributionData contribution =
                    widget.allowance.contributions[index];
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
    );
  }
}
