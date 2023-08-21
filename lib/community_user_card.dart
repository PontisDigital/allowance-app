import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';

class UserCardCommunity extends StatelessWidget {
  final String amountSpent;
  final String spentTime;
  final String username;
  final String? photoUrl;

  const UserCardCommunity({
    required this.amountSpent,
    required this.spentTime,
    required this.username,
    this.photoUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      //color: Colors.grey.shade700,
      color: Color(0xff14166e),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        iconColor: Colors.white,
        textColor: Colors.white,
        leading: (photoUrl == null)
            ? Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 12), // Adjust the vertical padding as needed
                child: Icon(Icons.monetization_on),
              )
            : CircleAvatar(
                backgroundImage: NetworkImage(photoUrl!),
              ),
        title: Text(
          (username == 'Someone') ? 'Someone' : '@${username}',
          style: SafeGoogleFont(
            'Outfit',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          'Spent ${amountSpent}',
          style: SafeGoogleFont(
            'Outfit',
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        trailing: Text(spentTime),
      ),
    );
  }
}
