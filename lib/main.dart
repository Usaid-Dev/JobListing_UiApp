import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  } // build
}
