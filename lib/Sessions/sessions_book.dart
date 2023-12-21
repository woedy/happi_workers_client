import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Sessions/session_availability.dart';
import 'package:happi_workers_client/constants.dart';


class SessionsBookSession extends StatefulWidget {
  const SessionsBookSession({super.key});

  @override
  State<SessionsBookSession> createState() => _SessionsBookSessionState();
}

class _SessionsBookSessionState extends State<SessionsBookSession> {
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
                                              backgroundImage: AssetImage("assets/images/user3.png"),

                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),

                                            Text(
                                              "Marvin McKinney",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),





                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,

                                                  children: [
                                                    Text(
                                                      "Stress Management Coaching",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.w500,
                                                          ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Lorem ipsum dolor sit amet consectetur. Ut consequat nunc senectus parturient diam urna sit bibendum. Ullamcorper quis ac lorem pretium volutpat sed mattis. Elementum tristique aenean eu duis fermentum. In quam id platea cursus volutpat euismod ultricies a mattis.",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),


                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Specialty",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Psychologist, Coach, Mediator",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),



                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Certificates",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Psychologist, Coach, Mediator",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),

                                                SizedBox(
                                                  height: 50,
                                                ),

                                                InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (BuildContext context) =>
                                                            SessionsAvailability()));
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    decoration: BoxDecoration(
                                                        color: happiPrimary,
                                                        borderRadius: BorderRadius.circular(15)),
                                                    child: Center(
                                                      child: Text(
                                                        "Next",
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
