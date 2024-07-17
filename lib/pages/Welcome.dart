// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                    "WELCOME",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset("assets/images/chat.svg"),
                SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                           Navigator.pushNamed(context, "/login");
                      },
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
                    ElevatedButton(
                      onPressed: () {
                           Navigator.pushNamed(context, "/signup");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 85, vertical: 10)),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                
                ],
              ),
            ),
            Positioned(
                width: 111, child: Image.asset("assets/images/main_top.png")),
            Positioned(
                bottom: 0,
                width: 111,
                child: Image.asset("assets/images/main_bottom.png")),
          ],
        ),
      ),
    );
  }
}
