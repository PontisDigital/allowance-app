import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class TutButton extends StatelessWidget {
  const TutButton({
    super.key,
    required this.fem,
    required this.ffem,
    required this.next,
  });

  final double fem;
  final double ffem;
  final Widget next;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // sendbuttonWjq (324:441)
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => next),
        );
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: 174.24 * fem,
        height: 42.8 * fem,
        decoration: BoxDecoration(
          color: Color(0x3f4b39ef),
          borderRadius: BorderRadius.circular(18.4576263428 * fem),
          border: Border(),
        ),
        child: Center(
          child: Text(
            'continue',
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Outfit',
              fontSize: 30 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.26 * ffem / fem,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}
