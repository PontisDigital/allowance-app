import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

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
            style: SafeGoogleFont(
              'Outfit',
              fontSize: 25 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.26 * ffem / fem,
              color: Color(0xffffffff),
            ),
          ),
          backgroundColor: Color.fromRGBO(4, 30, 66, 1),
        ),
        backgroundColor: Color.fromRGBO(4, 30, 66, 1),
        body: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'You guys decide when the next round of allowance is!',
              style: SafeGoogleFont(
                'Outfit',
                fontSize: 25 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.26 * ffem / fem,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: LinearPercentIndicator(
                percent: 0.25,
                center: Text("\$500", style: TextStyle(color: Colors.white)),
                progressColor: Colors.green,
                backgroundColor: Colors.black,
                lineHeight: 30.0,
                barRadius: Radius.circular(20),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Fill this bar up to unlock the next round!',
              style: SafeGoogleFont(
                'Outfit',
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
          ],
        ));
  }
}
