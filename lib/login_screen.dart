import 'package:flutter/material.dart';
import 'package:flutter_pemula/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: const Scaffold(
       body: Center(
         child: Text('Hello, world!'),
       ),
     ),
   );
  }
}