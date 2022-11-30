import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool haveAnAccount;
  final Function press;

  // ignore: use_key_in_widget_constructors
  const AlreadyHaveAnAccountCheck({
    this.haveAnAccount = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          haveAnAccount ? "Are you new here? " : "Already have an Account? ",
          style: const TextStyle(color: Colors.white54),
        ),
        InkWell(
          onTap: () {
            press();
          },
          child: Text(
            haveAnAccount ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: Colors.blue[700],
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
