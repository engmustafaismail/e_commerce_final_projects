import 'package:e_commerce_final_projects/Screens/Auth/Login/widgets/forget_password_logintext.dart';
import 'package:flutter/material.dart';


class ValidSigninOrSignUpText extends StatelessWidget {
  final String text;
  final String textbutton;
  final void Function() onpressed;
  const ValidSigninOrSignUpText({
    super.key,
    required this.text,
    required this.textbutton,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        TextButton(
          onPressed: onpressed,
          child: Text(
          textbutton, //  <----------| sign up text
            style: buildTextStyleForget(),
          ),
        )
      ],
    );
  }
}
