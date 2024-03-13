import 'package:flutter/material.dart';

// this widget is responsible for customizing elevated buttons that will be used
class CustomElevatedButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;

  const CustomElevatedButton({Key? key, required this.btnText, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  ElevatedButton(
        onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(btnText,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 18.0, color: Colors.white),),
            ),
          ],
        ),
    );
  }
}
