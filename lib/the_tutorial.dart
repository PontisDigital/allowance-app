import 'package:allowance/page-1/tutorial-1.dart';
import 'package:allowance/page-1/tutorial-2.dart';
import 'package:allowance/page-1/tutorial-3.dart';
import 'package:allowance/page-1/tutorial-4.dart';
import 'package:allowance/page-1/tutorial-5.dart';
import 'package:flutter/material.dart';
import 'package:allowance/utils.dart';

class TheTutorial extends StatefulWidget {
  const TheTutorial({Key? key}) : super(key: key);

  @override
  _TheTutorialState createState() => _TheTutorialState();
}

class _TheTutorialState extends State<TheTutorial> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.title),
        backgroundColor: Color(0xff041e42),
        centerTitle: true,
        title: Text(
          'Swipe to Continue',
          style: SafeGoogleFont(
            'Outfit',
            fontSize: 25 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.26 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
	  backgroundColor: Color.fromRGBO(4,30,66,1),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                Tut1(),
                Tut2(),
                Tut3(),
                Tut4(),
                Tut5(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 32),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: _currentPage == index ? BoxShape.circle : BoxShape.circle,
                    color: _currentPage == index
                        ? Color.fromRGBO(75,57,239,1)
                        : Colors.white,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
