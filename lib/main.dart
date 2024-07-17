import 'package:final_project/pages/Login.dart';
import 'package:final_project/pages/Signup.dart';
import 'package:final_project/pages/Welcome.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
  routes: {
    "/":(context) => const Welcome(),
    "/login":(context) => const Login(),
    "/signup":(context) => const Signup(),
  },
    );
  }
}