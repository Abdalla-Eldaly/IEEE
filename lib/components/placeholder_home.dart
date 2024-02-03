import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: MyButton(text: "Get Started", page: Login())
      ),
    );
  }
}
