import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constrains.dart';

class MyTextField extends StatefulWidget {
  MyTextField({super.key, required this.text, required this.isObscured});

  final bool isObscured;
  final String text;
  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 30,
          child: Text(
            widget.text,
            style: GoogleFonts.comfortaa(
                fontSize: xPadding,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: xPadding * 1.4),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.045,
            margin: const EdgeInsets.symmetric(horizontal: 30),

            decoration: BoxDecoration(
              color: MyColors.bg,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(50),
              ),
              border: Border(
                bottom: BorderSide(
                  color: isFocused ? MyColors.yellowX : MyColors.blueX,
                  width: 2,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),

            child: Focus(
              onFocusChange: (hasFocus) {
                setState(() {
                  isFocused = hasFocus;
                });
              },
              child: TextFormField(
                obscureText: widget.isObscured,
                obscuringCharacter: '*',
                cursorColor: MyColors.yellowX,
                cursorHeight: 20,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                ),
              ),
            ),

          ),
        ),
      ],
    );
  }
}
