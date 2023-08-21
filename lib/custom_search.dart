import 'package:allowance/page-1/home-page-done.dart';
import 'package:allowance/user_card.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<String> searchTerms;
  final String currentBalance;
  final List<OtherUser> otherUsers;

  CustomSearchDelegate(
      {required this.searchTerms,
      required this.currentBalance,
      required this.otherUsers});

  @override
  TextStyle? get searchFieldStyle => TextStyle(color: Colors.white);

  @override
  ThemeData appBarTheme(BuildContext context) {
    double baseWidth = 386.4799804688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return ThemeData(
      hintColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Color.fromRGBO(4, 30, 66, 1),
        toolbarTextStyle: TextStyle(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var term in searchTerms) {
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
      }
    }
    return Container(
        color: Color.fromRGBO(4, 30, 66, 1),
        child: ListView.builder(
          itemCount: matchQuery.length,
          itemBuilder: (context, index) {
            return UserCard(
                username: matchQuery[index],
                imageUrl: otherUsers.where((element) => element.username == matchQuery[index]).first.photoUrl,
                isButton: true,
                currentBalance: currentBalance);
          },
        ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}
