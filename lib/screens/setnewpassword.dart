// import 'package:autorepairshop/Widgets/button.dart';
// import 'package:autorepairshop/Widgets/textfield.dart';
// import 'package:autorepairshop/const.dart';
// import 'package:flutter/material.dart';

// class SetNewPasswordPage extends StatefulWidget {
//   const SetNewPasswordPage({super.key});
//   static const id = 'setNewPasswordPageRoute';

//   @override
//   State<SetNewPasswordPage> createState() => _SetNewPasswordPageState();
// }

// class _SetNewPasswordPageState extends State<SetNewPasswordPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0XFFE3F4E7),
//       body: SafeArea(
//           child: Container(
//         margin: EdgeInsets.all(15),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Set a new Password',
//               style: kpageTitleStyle,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Your password must contain at least 8\n characters and include at least 1 number\n or speacial character.',
//                       style: TextStyle(
//                         letterSpacing: 1,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextFieldWidget(
//               label: 'Old Password',
//               border: OutlineInputBorder(
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(15.0),
//                 ),
//                 borderSide: BorderSide(
//                   width: 0,
//                   style: BorderStyle.none,
//                 ),
//               ),
//               onSubmit: () {},
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextFieldWidget(
//               onSubmit: () {},
//               label: 'Create Password',
//               border: OutlineInputBorder(
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(15.0),
//                 ),
//                 borderSide: BorderSide(
//                   width: 0,
//                   style: BorderStyle.none,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextFieldWidget(
//               onSubmit: () {},
//               label: 'Confirm Password',
//               border: OutlineInputBorder(
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(15.0),
//                 ),
//                 borderSide: BorderSide(
//                   width: 0,
//                   style: BorderStyle.none,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GestureDetector(
//                 onTap: (() {}),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       'Forgot Password?',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ButtonWidget(
//               buttonText: 'Save',
//               func: () {},
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
