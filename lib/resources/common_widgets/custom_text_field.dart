import 'package:flutter/material.dart';

// this widget is responsible for customizing text-fields that will be used
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextField({Key? key, required this.controller, required this.hintText,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  TextFormField(
      controller: controller,
      style: TextStyle(
          fontFamily: "Jost",
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w400,
          fontSize: 16.0),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            fontFamily: "Jost",
            color: theme.hintColor,
            fontWeight: FontWeight.w400,
            fontSize: 16.0),
        border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: theme.hintColor)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: theme.hintColor)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: theme.hintColor)),
      ) ,
    );
  }
}
