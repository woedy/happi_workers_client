import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  File? _image;
  String? selectedCertificate;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
            bottom: false,

            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [

                      Positioned(
                          top: 0,
                          right: 0,
                          child: Image(
                              height: 280,
                              image: AssetImage("assets/images/conner.png"))),

                    ],
                  ),
                ),
                Column(
                  children: [

                    Container(
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image(
                                    image: AssetImage("assets/images/Back_b.png")),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Back", style: TextStyle(fontSize: 20),)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                        ],
                      ),
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          //color: Colors.red,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              SingleChildScrollView(
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [


                                      SizedBox(
                                        height: 30,
                                      ),

                                      Expanded(
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 50,
                                              backgroundImage: AssetImage("assets/images/user.png"),

                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),

                                            Text(
                                              "Theresa Debb",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),

                                            Divider(),
                                            SizedBox(
                                              height: 20,
                                            ),


                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Email: ",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w900,

                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      "gertrude@gmail.com",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Work Email: ",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w900,

                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      "gertrude@gmail.com",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Contact",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w900,

                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      "+1 (609) 933-44-22",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Country",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w900,

                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      "Wake Island",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Divider(),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Bio",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w900,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  "Alex Thompson is a multi-talented individual known for their contributions in various fields. Born on July 10th, 1985, Alex exhibited an early curiosity and passion for learning that would shape their diverse journey.\nWith a solid educational foundation in computer science, ",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),





                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }




}
