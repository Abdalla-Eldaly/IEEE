import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: Text(
              "TEST",
              style: TextStyle(
                  fontSize: 100,
                  color: Colors.white
              )
          )
      ),
    );
  }
}
