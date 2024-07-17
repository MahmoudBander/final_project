// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset("assets/images/login.svg"),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Your Email",
                        prefixIcon: Icon(Icons.person,color: Colors.purple,),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66)),
                    child: TextField(
                        obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Passwoed",
                        prefixIcon: Icon(Icons.lock,color: Colors.purple,),
                        suffixIcon: Icon(Icons.visibility,color: Colors.purple,)
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
                      ),
                      child: Text(
                        "Log in",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an Account ?  "),
                    GestureDetector(
                      onTap: (){Navigator.pushNamed(context, "/signup");},
                      child: Text(" Sign Up",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ],
                ),
                ],
              ),
            ),
            Positioned(
                width: 150, child: Image.asset("assets/images/main_top.png")),
            Positioned(
                bottom: 0,
                right: 0,
                width: 111,
                child: Image.asset("assets/images/login_bottom.png")),
          ],
        ),
      ),
    );
  }
}
