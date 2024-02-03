// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'constrains.dart';
//
//
// class CommonTextField extends StatefulWidget {
//   bool isEmailFocused;
//   bool obsecure ;
//   final String name;
//
//   CommonTextField({required this.isEmailFocused, required this.name,required t});
//
//   @override
//   State<CommonTextField> createState() => _CommonTextFieldState();
// }
//
// class _CommonTextFieldState extends State<CommonTextField> {
//   bool isEmailFocused = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned(
//           top: 0,
//           left: 40,
//           child: Text(
//             widget.name, // Use widget.name instead of name
//             style: GoogleFonts.comfortaa(fontSize: 20), // Assuming it should be x_padding
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 20 * 1.4, left: 10), // Assuming it should be x_padding
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 30),
//             decoration: BoxDecoration(
//               color: Mycolor.bg,
//               borderRadius: const BorderRadius.only(
//                 topRight: Radius.circular(50),
//                 topLeft: Radius.circular(0),
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(50),
//               ),
//               border: Border(
//                 bottom: BorderSide(
//                   color: widget.isEmailFocused ? Mycolor.yellow_X : Mycolor.Blue_X,
//                   width: 3,
//                 ),
//               ),
//             ),
//             child: Focus(
//               onFocusChange: (hasFocus) {
//                 setState(() {
//                   isEmailFocused = hasFocus;
//                 });
//               },
//               child: TextFormField(
//                 obscureText: ,
//                 cursorColor: Mycolor.yellow_X,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.all(16.0),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
