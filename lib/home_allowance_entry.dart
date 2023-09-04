import 'package:allowance/community.dart';
import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StoreCardWidget extends StatefulWidget {
  final Allowance allowance;
  final bool isLocked;
  final bool? isRewardPage;
  final double barPercent;

  const StoreCardWidget({
    super.key,
    required this.allowance,
    this.isRewardPage,
    this.isLocked = false,
    this.barPercent = 0.0,
  });

  @override
  State<StoreCardWidget> createState() => _StoreCardWidgetState();
}

class _StoreCardWidgetState extends State<StoreCardWidget> {
  @override
  Widget build(BuildContext context) {
    const double baseWidth = 386.4799804688;
    final double fem = MediaQuery.of(context).size.width / baseWidth;
    final double ffem = fem * 0.97;
    final imageWidth = 104.5;
    final imageHeight = 74.8;

    return GestureDetector(
      onTap: () {
        if (widget.isRewardPage ?? false) {
          return;
        }
        navigateToCommunityPage(context);
      },
      child: Stack(
        children: [
          Blur(
            borderRadius: BorderRadius.circular(26.3999996185 * fem),
            blur: widget.isLocked ? 4 : 0,
            colorOpacity: widget.isLocked ? 0.5 : 0,
            blurColor: Colors.grey.shade800,
            child: Container(
              // storecardmQs (27:44)
              margin:
                  EdgeInsets.fromLTRB(0.79 * fem, 0 * fem, 0.79 * fem, 0 * fem),
              padding:
                  EdgeInsets.fromLTRB(11 * fem, 15 * fem, 11 * fem, 11 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.3999996185 * fem),
                gradient: LinearGradient(
                  begin: Alignment(-1.001, -0.052),
                  end: Alignment(1.002, -0.001),
                  colors: <Color>[
                    Color(0xfff8b4b5),
                    Color(0xffeba4e8),
                    Color(0xffb4f2e1)
                  ],
                  stops: <double>[0, 0.494, 1],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // frame37165zoR (324:464)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 14 * fem),
                    width: double.infinity,
                    height: 84.7 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // frame37164iDd (324:465)
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // availableallowanceSQX (324:466)
                                margin: EdgeInsets.fromLTRB(
                                    8 * fem, 0 * fem, 0 * fem, 16 * fem),
                                child: Text(
                                  (widget.isRewardPage ?? false)
                                      ? 'upcoming allowance'
                                      : 'available allowance',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: !(widget.isRewardPage ?? false)
                                        ? 16.5 * ffem
                                        : 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3333333333 * ffem / fem,
                                    color: Color(0xff525354),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 16 * fem),
                                child: Text(
                                    // MnP (324:467)
                                    widget.allowance.balance,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: !(widget.isRewardPage ?? false)
                                          ? (widget.allowance.balance.length <=
                                                  6
                                              ? 60 * ffem
                                              : 50 * ffem)
                                          : 45 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 0.75 * ffem / fem,
                                      color: Color(0xff08090a),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // logoHvw (324:468)
                          padding: EdgeInsets.fromLTRB(
                              7.7 * fem, 5.5 * fem, 7.7 * fem, 4.4 * fem),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(16.5 * fem),
                          ),
                          child: Center(
                            // corp1Co1 (324:470)
                            child: SizedBox(
                              width: 104.5 * fem,
                              height: 74.8 * fem,
                              child: Image.network(
                                widget.allowance.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: !(widget.isRewardPage ?? false),
                    child: Center(
                      // keepshoppingtorefillyourallowa (324:472)
                      child: Text(
                        'Tap for more details',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.8181817609 * ffem / fem,
                          color: Color(0xff525354),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(widget.allowance.merchantName,
                  style: SafeGoogleFont(
                    'Outfit',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Icon(
                Icons.lock,
                size: 50,
                color: Colors.white,
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: LinearPercentIndicator(
                percent: widget.barPercent,
                progressColor: Colors.green,
                barRadius: Radius.circular(20),
              )),
              SizedBox(
                height: 10,
              ),
              Text("Tap for more details",
                  style: SafeGoogleFont(
                    'Outfit',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ))
            ],
          ),
        ],
      ),
    );
  }

  void navigateToCommunityPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            CommunityPage(merchantName: widget.allowance.merchantName),
      ),
    );
  }
}
