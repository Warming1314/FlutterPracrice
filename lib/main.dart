import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';
import 'pages/pages.dart';
import 'route/custome_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'useless',
       theme: new ThemeData(
         primaryColor: Colors.blue
       ),
       home: FirstPage(),
     );
   }
}

// class MyApp extends StatelessWidget {
//   @override
//     Widget build(BuildContext context) {
//       // TODO: implement build
//       return MaterialApp(
//         title: 'useless',
//         theme: ThemeData(
//           primarySwatch: Colors.lightBlue
//         ),
//         home: BottomAppBarDemo()//BottomAppBarDemo    BottomNavigationWidget
//       );
//     }
// }
