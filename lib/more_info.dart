import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({super.key});

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
        backgroundColor: Color.fromRGBO(4, 30, 66, 1),
      ),
      backgroundColor: Color.fromRGBO(4, 30, 66, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: SafeGoogleFont('Outfit',
                    fontSize: 24 * ffem,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                      text:
                          'When you shop at featured stores, show your QR code to the cashier.\n\n\n\n'),
                  TextSpan(
                      text:
                          'That means you need to use your QR code every time you shop, '),
                  TextSpan(
                      style: SafeGoogleFont(
                        'Outfit',
                        fontSize: 24 * ffem,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      text:
                          'both when you use your allowance dollars, and when you shop without allowance. '),
                  TextSpan(
                      style: SafeGoogleFont(
                        'Outfit',
                        fontSize: 24 * ffem,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      text:
                          'The more you shop, the sooner the next round of allowance drops.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
