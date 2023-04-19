import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../res/style.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: lightDark,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [blackShadow]),
      child: Image(
        image: AssetImage(name),
        width: 30,
      ),
    );
  }
}