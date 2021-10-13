import 'package:flutter/material.dart';
import 'package:kitapal/constants/constants.dart';

class Button extends StatelessWidget {
  final String text;

  const Button({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text, style: TextStyles.buttonText),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primary),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 17, horizontal: 30)),
      ),
    );
  }
}
