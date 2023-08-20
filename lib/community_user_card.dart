import 'package:flutter/material.dart';

class UserCardCommunity extends StatelessWidget {
  final double amountSpent;
  final DateTime spentDate;

  const UserCardCommunity({
    required this.amountSpent,
    required this.spentDate,
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
        leading: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 12), // Adjust the vertical padding as needed
          child: Icon(Icons.monetization_on),
        ),
        title: Text('Anonymous'),
        subtitle: Text(
            'Spent \$${amountSpent.toStringAsFixed(2)} at ${_formatTime(spentDate)}'),
      ),
    );
  }

  String _formatTime(DateTime date) {
    return "${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";
  }
}
