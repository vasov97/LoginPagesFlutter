import 'package:black_n_white/constants/colors.dart';
import 'package:flutter/material.dart';

import 'pages/starter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
         scaffoldBackgroundColor: AppColors.backgroundColor,
          primaryColor: AppColors.backgroundColor,
          colorScheme: const ColorScheme.dark().copyWith(
            background: AppColors.backgroundColor,
            primary: AppColors.backgroundColor,
            secondary: AppColors.backgroundColor,
          )),
      home: const StarterPage(),
    );
  }
}
