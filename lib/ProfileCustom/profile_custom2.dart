import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Authentication/SignIn/sign_in_screen.dart';
import 'package:happi_workers_client/Authentication/SignUp/sign_up_password.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom3.dart';
import 'package:happi_workers_client/constants.dart';
import 'dart:math' as math;



class ProfileCustomization2 extends StatefulWidget {
  const ProfileCustomization2({super.key});

  @override
  State<ProfileCustomization2> createState() => _ProfileCustomization2State();
}

class _ProfileCustomization2State extends State<ProfileCustomization2> {
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
                        Positioned(
                            top: 180,
                            left: 0,
                            right: 0,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Image(
                                  image: AssetImage("assets/images/stroke.png")),
                            )),

                      ],
                    ),
                  ),
                ),
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
                              "Your Mood Matters",
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
                              "How Are You Feeling Today?",
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
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage("assets/icons/face1_.png"),height: 40,),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    Text(
                                      "Unmotivated",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300,

                                          color: Colors.black),
                                    )

                                  ],
                                ),
                                Icon(Icons.circle_outlined, color: happiPrimary, size: 40,)
                              ],
                            ),
                          ),


                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage("assets/icons/face2_.png"), height: 40),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    Text(
                                      "Stressed",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300,

                                          color: Colors.black),
                                    )

                                  ],
                                ),
                                Icon(Icons.circle_outlined, color: happiPrimary, size: 40,)
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage("assets/icons/face3_.png"), height: 40),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    Text(
                                      "Not Sure",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300,

                                          color: Colors.black),
                                    )

                                  ],
                                ),
                                Icon(Icons.circle_outlined, color: happiPrimary, size: 40,)
                              ],
                            ),
                          ),
                        ],
                      ),


                      SizedBox(
                        height: 20,
                      ),




                      Column(
                        children: [
                          InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ProfileCustomization3()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: happiPrimary,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProfileCustomization3()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "Skip",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
