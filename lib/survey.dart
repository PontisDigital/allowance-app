import 'package:allowance/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:allowance/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HopSurvey extends StatefulWidget {
  HopSurvey({super.key});

  Map<int, bool> answers = {};

  @override
  State<HopSurvey> createState() => _HopSurveyState();
}

class _HopSurveyState extends State<HopSurvey> {
  // Define the PageController to manage the PageView navigation
  final PageController _pageController = PageController();

  // List of survey questions
  final List<String> surveyQuestions = [
    'Have you heard of Hop, Cask & Barrel?',
    'Have you ever shopped at Hop, Cask & Barrel?',
    'Is Hop, Cask & Barrel your preferred liquor store?',
  ];

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
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: surveyQuestions.length,
        itemBuilder: (context, index) {
          return buildQuestionPage(index);
        },
      ),
    );
  }

  Widget buildQuestionPage(int questionIndex) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.network(
                "https://scontent.fgla3-2.fna.fbcdn.net/v/t39.30808-6/294844151_561686978964408_1737830783202643118_n.jpg?stp=dst-jpg_p720x720&_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=PhByb6Pp7lUAX8HoGsN&_nc_ht=scontent.fgla3-2.fna&oh=00_AfB9vZDLK0TJ-dvE37Q8O-Q6l8WOeOj-7HSgzRIqHupg1Q&oe=64E8E46E"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              surveyQuestions[questionIndex],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50),
                    backgroundColor: (widget.answers[questionIndex] ?? false)
                        ? Colors.green
                        : Color.fromRGBO(0, 61, 166, 1)),
                onPressed: () {
                  // Handle 'Yes' button press
                  setState(() {
                    widget.answers[questionIndex] = true;
                  });
                  navigateToNextQuestion();
                },
                child: Text('Yes'),
              ),
              SizedBox(width: 100),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50),
                    backgroundColor: (widget.answers[questionIndex] ?? true)
                        ? Color.fromRGBO(0, 61, 166, 1)
                        : Colors.red),
                onPressed: () {
                  setState(() {
                    widget.answers[questionIndex] = false;
                  });
				  _completeSurvey();
                },
                child: Text('No'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void navigateToNextQuestion() {
    if (_pageController.page! < surveyQuestions.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _completeSurvey();
    }
  }

  void navigateToLastPage() {
    _pageController.jumpToPage(surveyQuestions.length - 1);
  }

  void _completeSurvey() async {
    const url = 'https://api.allowance.fund/submitSurvey';

    final headers = {
      'Content-Type': 'application/json',
    };

    final Map<String, bool> answers = {
      'heard_of_hop': widget.answers[0]!,
      'shopped_at_hop': widget.answers[1] ?? false,
      'preferred_hop': widget.answers[2] ?? false
    };

    final body = {
      'auth_token': await FirebaseAuth.instance.currentUser!.getIdToken(),
      'answers': answers,
    };

    final response = await http.post(Uri.parse(url),
        headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      // Request successful, handle the response if needed
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => MyApp()), (route) => false);
    } else {
      // Request failed, handle the error
    }
  }
}

