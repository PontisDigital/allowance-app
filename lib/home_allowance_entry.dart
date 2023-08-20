import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';

class StoreCardWidget extends StatelessWidget {
  final Allowance allowance;

  const StoreCardWidget({
    super.key,
    required this.allowance,
  });

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
      padding: EdgeInsets.fromLTRB(11 * fem, 15 * fem, 11 * fem, 11 * fem),
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
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // availableallowanceSQX (324:466)
                        margin: EdgeInsets.fromLTRB(
                            8 * fem, 0 * fem, 0 * fem, 16 * fem),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                            // MnP (324:467)
                            allowance.balance,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 60 * ffem,
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
                        allowance.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            // keepshoppingtorefillyourallowa (324:472)
            child: Text(
              'keep shopping to refill your allowance',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 12 * ffem,
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
