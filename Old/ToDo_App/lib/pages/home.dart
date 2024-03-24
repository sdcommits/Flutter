// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   final _textController = TextEditingController();
//   String userpost = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         title:
//         Text('To-Do List',),
//         elevation: 0,
//       ),
//       backgroundColor: Colors.white70,
//       body: SingleChildScrollView(
//         child: Container(
//           // height: h,
//           child: Column(
//               children: [
//                 // _list(),
//                 _additems(),
//                 _headSection(),
//               ]
//           ),
//
//         ),
//       ),
//
//     );
//   }
//
//   _additems() {
//     // return Positioned(
//     //   child:
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.only(top: 5, left: 10, right: 10),
//           height: 50,
//           decoration: BoxDecoration(
//             color: Colors.white70,
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(50),
//               topLeft: Radius.circular(50),
//               bottomLeft: Radius.circular(50),
//               bottomRight: Radius.circular(50),
//             ),
//           ),
//
//           child: Row(
//             children: [
//
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.only(left: 20),
//                   child:
//                     Column(
//                       children:
//                       [
//                         Expanded(child: Center(
//                           child: Text(userpost, style: TextStyle(fontSize: 35))
//
//                         ),
//                         ),
//                           TextField(
//                             controller: _textController,
//                             decoration: InputDecoration(
//                               hintText: 'Enter the text here',
//                             ),
//                           )
//                       ],
//                     )
//                   // Text(
//                   //   "Enter the text here", style: TextStyle(
//                   //   color: Colors.grey,
//                   //   fontSize: 20,
//                   //   fontWeight: FontWeight.w400,
//                   // ),
//                   // ),
//                 ),
//               ),
//               MaterialButton(
//
//                 onPressed: () {
//                   setState(() {
//                     userpost = _textController.text;
//                   });
//
//                 },
//                 color:  Colors.blue,
//                 child:
//                 const Text('Post',style:
//                 TextStyle(color: Colors.white70),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(right: 5),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50),
//                     topRight: Radius.circular(50),
//                     bottomRight: Radius.circular(50),
//                     bottomLeft: Radius.circular(50),
//                   ),
//                 ),
//
//
//               //   child:
//               //   Container(
//               //
//               //     margin: EdgeInsets.only(right: 20,left:20,top:10,bottom: 10),
//               //     child: Text(
//               //       "Add", style: TextStyle(
//               //       color: Colors.white,
//               //       fontSize: 20, fontWeight:
//               //       FontWeight.w600,
//               //     ),
//               //     ),
//               //   ),
//               ),
//
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//   _headSection() {
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.only(top: 20, left: 20,right: 20),
//           color:  Colors.white70,
//           child: Text(
//             userpost
//           ),
//           height: 100,
//         )
//       ],
//     );
//   }
//
// }
//
//
//
