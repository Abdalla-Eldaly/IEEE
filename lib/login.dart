import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/constrains.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isEmailFocused = false; // Declare isEmailFocused here
  bool isPasswordFocused = false; // Declare isPasswordFocused here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.scaffoldBg,
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back),
      //   backgroundColor: Mycolor.Blue_X,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .55,
              decoration: BoxDecoration(
                color: Mycolor.Blue_X,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(45),
                  bottomLeft: Radius.circular(45),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/IEEE Logo.png'),
                  Text(
                    'A New Era Begins',
                    style: GoogleFonts.kalam(color: Colors.white, fontSize: 32),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            // Email TextFormField
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 40,
                  child: Text(
                    'Email',
                    style: GoogleFonts.comfortaa(fontSize: x_pading),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: x_pading * 1.4, left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.05,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Mycolor.bg,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(50),
                      ),
                      border: Border(
                        bottom: BorderSide(
                          color: isEmailFocused ? Mycolor.yellow_X : Mycolor.Blue_X,
                          width: 3,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Shadow color
                          spreadRadius: 2, // How far the shadow should spread
                          blurRadius: 3, // How blurry the shadow should be
                          offset: Offset(0, 4), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: Focus(
                      onFocusChange: (hasFocus) {
                        setState(() {
                          isEmailFocused = hasFocus;
                        });
                      },
                      child: TextFormField(
                        cursorColor: Mycolor.yellow_X,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                  )
                  ,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 40,
                  child: Text(
                    'Code',
                    style: GoogleFonts.comfortaa(fontSize: x_pading),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: x_pading * 1.4, left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .75,
                    height: MediaQuery.of(context).size.height * .05,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Mycolor.bg,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(50),
                      ),
                      border: Border(

                        bottom: BorderSide(
                          color: isPasswordFocused
                              ? Mycolor.yellow_X
                              : Mycolor.Blue_X,
                          width: 3,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Shadow color
                          spreadRadius: 2, // How far the shadow should spread
                          blurRadius: 3, // How blurry the shadow should be
                          offset: Offset(0, 4), // Offset of the shadow
                        ),
                      ],
                    ),

                    child: Focus(
                      onFocusChange: (hasFocus) {
                        setState(() {
                          isPasswordFocused = hasFocus;
                        });
                      },
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: Mycolor.yellow_X,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Mycolor.Blue_X,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * .63,


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                      child: Text('Log In',
                          style: GoogleFonts.comfortaa(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
