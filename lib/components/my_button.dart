import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constrains.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text, required this.page});
  final String text;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.blueX,
        elevation: 4,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .67,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Text(
                  text,
                  style: GoogleFonts.comfortaa(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
