import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/page-1/search-page-done.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';

class ComingSoonWidget extends StatelessWidget {
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
	  height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.3999996185 * fem),
        color: Colors.grey.shade600,
      ),
      child: Center(
          child: Text("More Stores Coming Soon!", style: SafeGoogleFont(
		  'Outfit',
		  fontSize: 20,
		  fontWeight: FontWeight.w700,
		  color: Colors.white,
		  ))),
    );
  }
}
