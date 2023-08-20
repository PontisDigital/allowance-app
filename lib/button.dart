import 'package:allowance/utils.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const CustomButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: SafeGoogleFont('Outfit',
		fontSize: 24 * ffem,
		fontWeight: FontWeight.w600,
		),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Color.fromRGBO(0, 61, 166, 1)),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 35.0)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.3050861359 * fem),
          ),
        ),
      ),
    );
  }
}
