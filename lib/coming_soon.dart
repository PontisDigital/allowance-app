import 'package:allowance/home_allowance_entry.dart';
import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/utils.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

class ComingSoonWidget extends StatelessWidget {
  final String imageUrl;

  ComingSoonWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    const double baseWidth = 386.4799804688;
    final double fem = MediaQuery.of(context).size.width / baseWidth;
    final double ffem = fem * 0.97;
    final imageWidth = 104.5;
    final imageHeight = 74.8;

    return Stack(children: [
      Blur(
        blur: 8,
        blurColor: Colors.black,
        borderRadius: BorderRadius.circular(26.3999996185 * fem),
        child: StoreCardWidget(
            allowance: Allowance(
                balance: "\$0.00",
                imageUrl: imageUrl,
                    
					)),
      ),
      Positioned.fill(
          child: Center(
              child: Text("Coming Soon!",
                  style: SafeGoogleFont(
                    'Outfit',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )))),
    ]);
  }
}
