import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/text_field.dart';
import 'package:login/constrains.dart';

import 'test_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.scaffoldBg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .54,
              decoration: const BoxDecoration(
                color: MyColors.blueX,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(45),
                  bottomLeft: Radius.circular(45),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 1,),
                  Image.asset('assets/images/IEEE Logo.png'),
                  Text(
                    'A New Era Begins',
                    style: GoogleFonts.kalam(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        shadows: [
                          const Shadow(
                            blurRadius: 4.0,
                            offset: Offset(0, 4.0),
                          ),
                        ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            MyTextField(text: "Email", isObscured: false),
            const SizedBox(height: 20),
            MyTextField(text: "Code", isObscured: true),
            const SizedBox(height: 60),
            const MyButton(text: "Log In", page: Test())
          ],
        ),
      ),
    );
  }
}