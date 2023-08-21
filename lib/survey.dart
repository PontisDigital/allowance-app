import 'package:allowance/button.dart';
import 'package:flutter/material.dart';
import 'package:allowance/utils.dart';

class SurveyPrompt extends StatelessWidget {
  const SurveyPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff041e42),
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
      ),
      backgroundColor: Color(0xff041e42),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              'Take a quick survey to earn\n\$3.75?',
              style: SafeGoogleFont(
                'Outfit',
                fontSize: 25 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.26 * ffem / fem,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'It will take no more than 20 seconds!',
              style: SafeGoogleFont(
                'Outfit',
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.26 * ffem / fem,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
                "https://media.tenor.com/A1NWTd1hIFgAAAAC/hug.gif"),
          ),
		  Padding(
		    padding: const EdgeInsets.all(16.0),
		    child: CustomButton(onPressed: () {}, text: 'Take Survey', minHeight: 50,),
		  )
        ],
      ),
    );
  }
}
