import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/page-1/search-page-done.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';

class StoreCardWidget extends StatelessWidget {
  final Allowance allowance;

  const StoreCardWidget({
    super.key,
    required this.allowance,
  });

  void navigateToPayPrompt(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SingleChildScrollView(
                child: SearchPage(
                    amountPassedIn: allowance.balance,
                    logo_url: allowance.imageUrl))));
  }

  @override
  Widget build(BuildContext context) {
    const double baseWidth = 386.4799804688;
    final double fem = MediaQuery.of(context).size.width / baseWidth;
    final double ffem = fem * 0.97;
    final imageWidth = 104.5;
    final imageHeight = 74.8;

    return Container(
      // storecardmQs (27:44)
      margin: EdgeInsets.fromLTRB(0.79 * fem, 0 * fem, 0.79 * fem, 0 * fem),
      padding: EdgeInsets.fromLTRB(11 * fem, 15 * fem, 11 * fem, 36 * fem),
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
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
            width: double.infinity,
            height: 84.7 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
			  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // frame37164iDd (324:465)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 4.35 * fem, 18 * fem, 4.35 * fem),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // availableallowanceSQX (324:466)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                          'available allowance',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 16.5 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3333333333 * ffem / fem,
                            color: Color(0xff525354),
                          ),
                        ),
                      ),
                      Text(
                        // MnP (324:467)
						allowance.balance,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 59.4000015259 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 0.7618519237 * ffem / fem,
                          letterSpacing: -0.5940000153 * fem,
                          color: Color(0xff08090a),
                        ),
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
					  	allowance.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // keepshoppingtorefillyourallowa (324:472)
            margin: EdgeInsets.fromLTRB(5.31 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: Text(
              'keep shopping to refill your allowance',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 12.1000003815 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.8181817609 * ffem / fem,
                color: Color(0xff525354),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
