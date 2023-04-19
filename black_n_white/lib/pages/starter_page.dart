import 'package:black_n_white/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const SizedBox(
              height: 35,
            ),
            Image.asset('assets/blackwh.png'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Enterprise team',
                softWrap: true,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'collaboration.',
                softWrap: true,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                'Bring together your files, your tools,projects and people. Including a new mobile and desktop application.',
                softWrap: true,
                style: TextStyle(
                    color: AppColors.greyTextColor,
                    fontSize: 15,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ]),
    );
  }
}
