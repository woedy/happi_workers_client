import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Authentication/SignIn/sign_in_screen.dart';
import 'package:happi_workers_client/Authentication/SignUp/sign_up_password.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom5.dart';
import 'package:happi_workers_client/constants.dart';
import 'dart:math' as math;



class ProfileCustomization4 extends StatefulWidget {
  const ProfileCustomization4({super.key});

  @override
  State<ProfileCustomization4> createState() => _ProfileCustomization4State();
}

class _ProfileCustomization4State extends State<ProfileCustomization4> {
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
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Opacity(
                                opacity: 0.1,
                                child: Image(
                                    image: AssetImage("assets/images/stroke.png")),
                              ),
                            )),

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
                                  "Practitioner Suggestion",
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
                                  "Meet Your Practitioner",
                                  style: TextStyle(
                                      fontSize: 12,

                                      color: happiPrimary),
                                ),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 10,
                          ),


                          Column(
                            children: [

                              Text(
                                "Based on your assessment, we recommend working with a personal motivation coach.",
                                style: TextStyle(
                                    fontSize: 16,),
                              ),

                              SizedBox(
                                height: 10,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Explore other options",
                                    style: TextStyle(
                                        fontSize: 12,

                                        color: happiPrimary),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),


                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundImage: AssetImage("assets/images/user.png"),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dianne Russell",
                                              style: TextStyle(
                                                fontSize: 24,),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: happiGreen.withOpacity(0.1),
                                                borderRadius: BorderRadius.circular(5)
                                              ),
                                              child: Text(
                                                "English",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                color: happiGreen),
                                              ),
                                            ),
                                          ],
                                        ),



                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "COACH",
                                      style: TextStyle(
                                        fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                    ),

                                    SizedBox(
                                      height: 30,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                ProfileCustomization5()));
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            color: happiLghtPurple,
                                            borderRadius: BorderRadius.circular(15)),
                                        child: Center(
                                          child: Text(
                                            "Book an appointment",
                                            style: TextStyle(color: happiPrimary),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              InkWell(
                                onTap: () {
                                 /* Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignUpPassword()));*/
                                },
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: happiPrimary,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      "Continue to dashboard",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),






                            ],
                          ),






                        ],
                      ),
                    ),

                  ],
                ),

              ],
            )));
  }
}
