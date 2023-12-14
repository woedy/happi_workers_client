import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Authentication/SignIn/sign_in_screen.dart';
import 'package:happi_workers_client/Authentication/SignUp/sign_up_password.dart';
import 'package:happi_workers_client/constants.dart';
import 'dart:math' as math;



class ProfileCustomization3 extends StatefulWidget {
  const ProfileCustomization3({super.key});

  @override
  State<ProfileCustomization3> createState() => _ProfileCustomization3State();
}

class _ProfileCustomization3State extends State<ProfileCustomization3> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                     /*   Positioned(
                            top: 180,
                            left: 0,
                            right: 0,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Image(
                                  image: AssetImage("assets/images/stroke.png")),
                            )),*/

                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.red,
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(
                                  height: 51,
                                  image:
                                  AssetImage("assets/images/Happiworkers Full color1@4x 2.png")),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "Quick Assessment",
                                  style: TextStyle(
                                      fontSize: 48,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "Let's Dive Deeper",
                                  style: TextStyle(
                                      fontSize: 12,

                                      color: happiPrimary),
                                ),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 20,
                          ),


                          Column(
                            children: [
                              Text(
                                "Question 1",
                                style: TextStyle(
                                    fontSize: 30,
                                fontWeight: FontWeight.w600),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text(
                                "What are your current goals or objectives that you're struggling with?",
                                style: TextStyle(
                                    fontSize: 12,),
                              ),

                              SizedBox(
                                height: 20,
                              ),


                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: happiLghtPurple,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.circle, color: Colors.white,),
                                        SizedBox(
                                          width: 20,
                                        ),

                                        Text(
                                          "Work-related",
                                          style: TextStyle(
                                            fontSize: 15,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: happiLghtPurple,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.circle, color: Colors.white,),
                                        SizedBox(
                                          width: 20,
                                        ),

                                        Text(
                                          "Relationships",
                                          style: TextStyle(
                                            fontSize: 15,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),


                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: happiLghtPurple,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.circle, color: Colors.white,),
                                        SizedBox(
                                          width: 20,
                                        ),

                                        Text(
                                          "Personal development",
                                          style: TextStyle(
                                            fontSize: 15,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: happiLghtPurple,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.circle, color: happiPrimary,),
                                        SizedBox(
                                          width: 20,
                                        ),

                                        Text(
                                          "Other",
                                          style: TextStyle(
                                            fontSize: 15,),
                                        ),

                                      ],
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SignUpPassword()));
                                    },
                                    child: Container(
                                      width: 105,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(15)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.arrow_left_outlined, color: Colors.white,),
                                          Text(
                                            "Back",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SignUpPassword()));
                                    },
                                    child: Container(
                                      width: 105,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          color: happiPrimary,
                                          borderRadius: BorderRadius.circular(15)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Next",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          Icon(Icons.arrow_right_outlined, color: Colors.white,),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),





                            ],
                          ),


                          SizedBox(
                            height: 100,
                          ),





                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [


                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Assessment for Feeling Unmotivated",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "1 Of 5 questions",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: happiPrimary),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignUpPassword()));
                              },
                              child: Container(
                                width: 105,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: happiPrimary,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Submit",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(Icons.arrow_right_outlined, color: Colors.white,),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

              ],
            )));
  }
}
