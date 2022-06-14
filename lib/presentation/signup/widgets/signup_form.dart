import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/presentation/signup/widgets/signin_register_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Form(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 80,
          ),
          Text(
            "Welcome",
            style: themeData.textTheme.headline1!.copyWith(
                fontSize: 50, fontWeight: FontWeight.w500, letterSpacing: 4),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Please register or sign in",
            style: themeData.textTheme.headline1!.copyWith(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 4),
          ),
          const SizedBox(
            height: 80,
          ),
          TextFormField(
            cursorColor: Colors.white,
            decoration: const InputDecoration(
              labelText: "E-mail",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            cursorColor: Colors.white,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SignInRegisterButton(
            buttonText: "Sign in",
            callback: () {
              print("sign in pressed");
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SignInRegisterButton(
            buttonText: "Register",
            callback: () {
              print("register pressed");
            },
          ),
        ],
      ),
    );
  }
}