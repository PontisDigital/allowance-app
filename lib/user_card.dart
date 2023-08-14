import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/page-1/search-page-done.dart';
import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String username;
  final String? imageUrl;

  const UserCard({
    super.key,
    required this.username,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    const double baseWidth = 386.4799804688;
    final double fem = MediaQuery.of(context).size.width / baseWidth;
    final double ffem = fem * 0.97;
    final imageWidth = 104.5;
    final imageHeight = 74.8;

    return Container(
      // group18LF1 (301:1227)
      margin: EdgeInsets.only(bottom: 10.0 * fem),
      width: double.infinity,
      height: 60.39 * fem,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.8099956512 * fem),
      ),
      child: Container(
        // sampleuser4Ru (301:1228)
        padding: EdgeInsets.fromLTRB(
            4.95 * fem, 2.97 * fem, 13.56 * fem, 2.97 * fem),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff446da4),
          borderRadius: BorderRadius.circular(18.8099956512 * fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (imageUrl == null)
                ? (Container(
                    // autogroupnsnjaQF (B1A1ZA3sjy7C9m2tAZnSnj)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 3.96 * fem, 0 * fem),
                    width: 54.45 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x999747ff),
                      borderRadius: BorderRadius.circular(27.2250003815 * fem),
                    ),
                    child: Center(
                      child: Text(
                        username[0].toUpperCase(),
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Outfit',
                          fontSize: 23.7599983215 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.26 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ))
                : (Container(
                    // autogroupnsnjaQF (B1A1ZA3sjy7C9m2tAZnSnj)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 3.96 * fem, 0 * fem),
                    width: 54.45 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x999747ff),
                      borderRadius: BorderRadius.circular(27.2250003815 * fem),
                    ),
                    child: Center(child: Image.network(imageUrl!)),
                  )),
            Container(
              // evanbirnsthehippo3ddR (301:1231)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 1.29 * fem, 0 * fem, 0 * fem),
              child: Text(
                '@' + username,
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Outfit',
                  fontSize: 23.7599983215 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.26 * ffem / fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
