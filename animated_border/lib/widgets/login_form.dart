import 'package:flutter/material.dart';

import '../res/colors.dart';
import 'custom_input_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Login',
          style: TextStyle(
            color: white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 20),
        const CustomInputField('Username',isPasswordField: false,),
        const CustomInputField('Password',isPasswordField: true,),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot Password',
            style: TextStyle(
              color: white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: white,
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            ),
            onPressed: () {},
            child: const Text(
              'Login',
              style: TextStyle(
                color: dark,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            )),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Don\'t have an account? ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            Text(
              'Register',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
