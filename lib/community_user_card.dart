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
      color: Colors.grey.shade700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        iconColor: Colors.white,
        textColor: Colors.white,
        leading: (photoUrl == null) ? Padding(
          padding: EdgeInsets.symmetric(
              vertical: 12), // Adjust the vertical padding as needed
          child: Icon(Icons.monetization_on),
        )
		:
		CircleAvatar(
		  backgroundImage: NetworkImage(photoUrl!),
		)
		,
        title: Text(username),
        subtitle: Text('Spent ${amountSpent}'),
        trailing: Text(spentTime),
      ),
    );
  }
}
