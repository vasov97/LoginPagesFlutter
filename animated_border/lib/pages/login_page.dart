import 'package:flutter/material.dart';
import 'dart:math';

import '../res/colors.dart';
import '../res/icons.dart';
import '../res/style.dart';
import '../widgets/login_form.dart';
import '../widgets/login_option.dart';
import '../widgets/neon_background.dart';

const double width = 320;
const double height = 450;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    _animation = Tween<double>(begin: 0, end: 2 * pi).animate(_controller);
    _controller.repeat();

    _controller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const SizedBox(height: 110,),
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: darkBlue,
                      boxShadow: [
                        blackShadow,
                      ],
                    ),
                  ),
                  Positioned(
                    top: height / 2,
                    left: width / 2,
                    child: NeonBackground(
                      width: width,
                      height: height,
                      alignment: Alignment.topLeft,
                      animation: _animation,
                      colors: const [
                        Colors.transparent,
                        neonblue,
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: height / 2,
                    right: width / 2,
                    child: NeonBackground(
                      height: height,
                      width: width,
                      alignment: Alignment.bottomRight,
                      animation: _animation,
                      colors: const [
                        neonblue,
                        Colors.transparent,
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus!.unfocus();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: width - 10,
                      height: height - 10,
                      decoration: const BoxDecoration(
                        color: lightDarkBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const LoginForm(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 1.3,
                      color: inputColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Text(
                    'Or Login with',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 1.3,
                      color: inputColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  LoginOption(name: facebook),
                  LoginOption(name: google),
                  LoginOption(name: apple),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 55,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  LoginOption(name: phone),
                  LoginOption(name: github),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
