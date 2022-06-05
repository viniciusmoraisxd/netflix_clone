import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/sign_in/sign_in_page.dart';
import 'package:netflix_clone/shared/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone App',
      theme: AppTheme.nfTheme,
      home: const SignInPage(),
    );
  }
}
