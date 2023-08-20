import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final bool? isPassword;
  final String hintText;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Function(String)? onSubmitted;
  final TextEditingController? controller;
  final Function()? onTap;

  const CustomInput({
    this.isPassword,
    required this.hintText,
    this.onChanged,
    this.keyboardType,
    this.onSubmitted,
	this.controller,
	this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Padding(
      padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0),
      child: TextField(
        onSubmitted: onSubmitted,
		onTap: onTap,
        cursorColor: Colors.white,
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.center,
        obscureText: isPassword ?? false,
        style: TextStyle(
          fontSize: 25 * ffem,
          fontWeight: FontWeight.w700,
          height: 1.26 * ffem / fem,
          color: Colors.white,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(18.3050861359 * fem),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(18.3050861359 * fem),
          ),
          fillColor: Colors.white,
          focusColor: Colors.white,
          hoverColor: Colors.white,
          labelText: hintText,
          labelStyle: TextStyle(
            fontSize: 25 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.26 * ffem / fem,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
