import 'package:flutter/material.dart';
import 'package:gold_line_driver/screens/authentication/sign_up.dart';

class GoldLine extends StatelessWidget {
  const GoldLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
      theme: ThemeData(),
    );
  }
}
