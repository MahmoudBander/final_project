// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                    "SIGNUP",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SvgPicture.asset("assets/images/signup.svg",width: 220,),
                  SizedBox(
                    height: 20,
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
                        "SIGNUP",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account ?  "),
                    GestureDetector(
                      onTap: (){Navigator.pushNamed(context, "/login");},
                      child: Text(" Log in",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ],
                ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.purple[900],
                          ),
                        ),
                        Text("OR"),
                          Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.purple[900],
                          ),
                        ),
                      ],
                    ),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                     padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.purple, width: 1),),
                    child: SvgPicture.asset("assets/images/facebook.svg",color: Colors.purple[700],
                    width: 35,
                    ),
                  ),
                      Container(
                     padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.purple, width: 1),),
                    child: SvgPicture.asset("assets/images/twitter.svg",color: Colors.purple[700],
                    width: 35,
                    ),
                  ),
                      Container(
                     padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.purple, width: 1),),
                    child: SvgPicture.asset("assets/images/google-plus.svg",color: Colors.purple[700],
                    width: 35,
                    ),
                  ),
                ],
              ),
                ],
              ),
            ),
            Positioned(
                width: 150, child: Image.asset("assets/images/signup_top.png")),
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
