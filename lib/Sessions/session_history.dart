import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Sessions/session_history_detail.dart';
import 'package:happi_workers_client/constants.dart';


class SessionHistory extends StatefulWidget {
  const SessionHistory({super.key});

  @override
  State<SessionHistory> createState() => _SessionHistoryState();
}

class _SessionHistoryState extends State<SessionHistory> {
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


                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    "History",
                                                    style: TextStyle(
                                                        fontSize: 48,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Container(
                                              height: 500,
                                              child: ListView(
                                              
                                                children: [
                                              
                                                  Container(
                                                    //height: 100,
                                                    width: 360,
                                                    decoration: BoxDecoration(
                                                      color: happiDark,
                                                      borderRadius: BorderRadius.circular(20),
                                              
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 15),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              
                                                            children: [
                                              
                                                              Row(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Expanded(child: Text("Stress Management Coaching", style: TextStyle(color: Colors.white, fontSize: 20),)),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Expanded(child: Text("9/23/16 at 1500GMT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 12),),
                                                                  ),
                                                                ],
                                                              ),
                                              
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                              
                                                              Text("Understand the roots of stress and discover effective strategies to manage it in a healthy and productive way.", style: TextStyle(color: Colors.white, fontSize: 12),),
                                              
                                              
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                              
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              
                                                                children: [
                                                                  Row(
                                                                    children: [
                                              
                                                                      CircleAvatar(
                                                                        backgroundImage: AssetImage("assets/images/user2.png"),
                                                                      ),
                                                                      SizedBox(
                                                                        width: 10,
                                                                      ),
                                                                      Text("Julia Reddington", style: TextStyle(color: Colors.white, fontSize: 12),),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                              
                                              
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                              
                                              
                                                                  Row(
                                                                    children: [
                                              
                                                                      InkWell(
                                                                        onTap: (){
                                                                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SessionHistoryCancel()));

                                                                        },
                                                                        child: Container(
                                                                            padding: EdgeInsets.all(10),
                                                                            width: 120,
                                                                            decoration: BoxDecoration(
                                                                              color: Colors.white,
                                                                              borderRadius: BorderRadius.circular(20),

                                                                            ),

                                                                            child: Center(child: Text("Cancel", style: TextStyle(color: Colors.black, fontSize: 10),))),
                                                                      ),
                                                                      SizedBox(
                                                                        width: 10,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                              
                                              
                                              
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    //height: 100,
                                                    width: 360,
                                                    decoration: BoxDecoration(
                                                      color: happiDark,
                                                      borderRadius: BorderRadius.circular(20),
                                              
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 15),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              
                                                            children: [
                                              
                                                              Row(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Expanded(child: Text("Resilience Building Workshop", style: TextStyle(color: Colors.white, fontSize: 20),)),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Expanded(child: Text("9/23/16 at 1500GMT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 12),),
                                                                  ),
                                                                ],
                                                              ),
                                              
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                              
                                                              Text("Understand the roots of stress and discover effective strategies to manage it in a healthy and productive way.", style: TextStyle(color: Colors.white, fontSize: 12),),
                                              
                                              
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                              
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              
                                                                children: [
                                                                  Row(
                                                                    children: [
                                              
                                                                      CircleAvatar(
                                                                        backgroundImage: AssetImage("assets/images/user2.png"),
                                                                      ),
                                                                      SizedBox(
                                                                        width: 10,
                                                                      ),
                                                                      Text("Julia Reddington", style: TextStyle(color: Colors.white, fontSize: 12),),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                              
                                              
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                              
                                              
                                                                  Row(
                                                                    children: [
                                              
                                                                      Container(
                                                                          padding: EdgeInsets.all(10),
                                                                          width: 120,
                                                                          decoration: BoxDecoration(
                                                                            color: Colors.transparent,
                                                                            borderRadius: BorderRadius.circular(20),
                                              
                                                                          ),
                                              
                                                                          child: Center(child: Text("Attended", style: TextStyle(color: Colors.green, fontSize: 10),))),
                                                                      SizedBox(
                                                                        width: 10,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                              
                                              
                                              
                                                      ],
                                                    ),
                                                  ),
                                              
                                              
                                                ],
                                              ),
                                            ),


                                            SizedBox(
                                              height: 70,
                                            ),

                                            InkWell(
                                              onTap: () {

                                                //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyDeviceCheck()));

                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(15),
                                                decoration: BoxDecoration(
                                                    color: happiPrimary,
                                                    borderRadius: BorderRadius.circular(15)),
                                                child: Center(
                                                  child: Text(
                                                    "Back To Dashboard",
                                                    style: TextStyle(color: Colors.white),
                                                  ),
                                                ),
                                              ),
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
