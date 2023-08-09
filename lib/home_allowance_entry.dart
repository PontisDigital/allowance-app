import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/page-1/search-page-done.dart';
import 'package:flutter/material.dart';

class StoreCardWidget extends StatelessWidget {
  final Allowance allowance;

  const StoreCardWidget({super.key, 
    required this.allowance,
  });

  void navigateToPayPrompt(BuildContext context)
  {
	Navigator.push(context, MaterialPageRoute(builder: (context) => SingleChildScrollView(child: SearchPage(amountPassedIn: allowance.balance, logo_url: allowance.imageUrl))));
  }

  @override
  Widget build(BuildContext context) {
	const double baseWidth = 386.4799804688;
    final double fem = MediaQuery.of(context).size.width / baseWidth;
    final double ffem = fem * 0.97;
	final imageWidth = 104.5;
	final imageHeight = 74.8;


      return Container(
        // storecardoHq (324:463)
        padding: EdgeInsets.fromLTRB(11 * fem, 15 * fem, 11 * fem, 36 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26.3999996185 * fem),
          gradient: const LinearGradient(
            begin: Alignment(-1.001, -0.052),
            end: Alignment(1.002, -0.001),
            colors: <Color>[Color(0xfff8b4b5), Color(0xffeba4e8), Color(0xffb4f2e1)],
            stops: <double>[0, 0.494, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame37165pyd (324:464)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
              width: double.infinity,
              height: 84.7 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37164xK9 (324:465)
                    margin: EdgeInsets.fromLTRB(0 * fem, 4.35 * fem, 18 * fem, 4.35 * fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // availableallowanceUoH (324:466)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          child: Text(
                            'available allowance',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16.5 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3333333333 * ffem / fem,
                              color: const Color(0xff525354),
                            ),
                          ),
                        ),
                        Text(
                          // aLX (324:467)
                          allowance.balance,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 59.4000015259 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 0.7618519237 * ffem / fem,
                            letterSpacing: -0.5940000153 * fem,
                            color: const Color(0xff08090a),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // logoudh (324:468)
                    padding: EdgeInsets.all(7.7 * fem),
                    height: imageHeight * fem,
                    width: imageWidth * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(16.5 * fem),
                    ),
                    child: 
                        Image.network(
                          allowance.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                ],
              ),
            ),
            Container(
              // keepshoppingtorefillyourallowa (324:472)
              margin: EdgeInsets.fromLTRB(3.65 * fem, 0 * fem, 0 * fem, 0 * fem),
              child: Text(
                'keep shopping to refill your allowance',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12.1000003815 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.8181817609 * ffem / fem,
                  color: const Color(0xff525354),
                ),
              ),
            ),
          ],
        ),
    );
  }
}

