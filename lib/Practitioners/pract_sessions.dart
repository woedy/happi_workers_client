import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom8.dart';
import 'package:happi_workers_client/constants.dart';


class PractitionerSessions extends StatefulWidget {
  const PractitionerSessions({super.key});

  @override
  State<PractitionerSessions> createState() => _PractitionerSessionsState();
}

class _PractitionerSessionsState extends State<PractitionerSessions> {
  final _formKey = GlobalKey<FormState>();
  String? selectedInterval;



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
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        //color: Colors.red,

                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage("assets/images/user.png"),
                                      radius: 40,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Dianne Russell",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 15,
                                ),

                                Text("Select your dates and corresponding times available with this practitioner", style: TextStyle(fontSize: 12),),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),


                            Expanded(
                              child: Container(
                                child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: (context, index){
                                      return Column(
                                        children: [
                                          Container(
                                            //height: 20,

                                            child: Stack(
                                              children: [
                                                Positioned(
                                                    bottom: 0,
                                                    child: Image(image: AssetImage("assets/images/small_stroke.png"))),
                                                Container(
                                                  padding: EdgeInsets.all(20),
                                                  decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius: BorderRadius.circular(10),
                                                      border:
                                                      Border.all(color: Colors.black.withOpacity(0.1))),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                    children: [
                                                      Text("21st August 2023", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.access_time_sharp),
                                                          Text("10:00am", style: TextStyle(fontSize: 12, color: Colors.black),),
                                                        ],
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(
                                            height: 10,
                                          ),

                                        ],
                                      );
                                    }),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            InkWell(
                              onTap: (){
                                //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => RecurringAvailability()));

                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Add session to calender",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red),

                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/images/calenbut.png")),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(image: AssetImage("assets/images/calen1.png")),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(image: AssetImage("assets/images/calen2.png")),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(image: AssetImage("assets/images/calen3.png")),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 10,
                            ),


                            InkWell(
                              onTap: () {

                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfileCustomization8()));

                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
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

                            SizedBox(
                              height: 10,
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }








}
