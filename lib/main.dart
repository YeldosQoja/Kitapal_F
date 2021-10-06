import 'package:flutter/material.dart';
import 'package:kitapal/constants/constants.dart';
import 'package:kitapal/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitapal',
      theme: ThemeData(
          primaryColor: AppColors.primary,
          accentColor: AppColors.secondary,
          textTheme: TextTheme(
              bodyText1: TextStyles.h1,
              bodyText2: TextStyles.h2,
              button: TextStyles.buttonText),
          buttonTheme: ButtonThemeData(
            buttonColor: AppColors.primary,
            textTheme: ButtonTextTheme.primary,
          )),
      home: MainPage(
        name: '',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
