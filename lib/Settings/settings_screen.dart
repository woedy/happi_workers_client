import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Components/add_button_dialogbox.dart';
import 'package:happi_workers_client/Messages/my_chat_screen.dart';
import 'package:happi_workers_client/Sessions/my_sessions.dart';
import 'package:happi_workers_client/Sessions/sessions_screen.dart';
import 'package:happi_workers_client/constants.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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


                        ],
                      ),
                    ),

                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            //color: Colors.red,

                            //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [

                                            ],
                                          ),
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => NotificationsScreen()));

                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: happiPrimary.withOpacity(0.2),
                                                    borderRadius: BorderRadius.circular(100)
                                                  ),
                                                  child: Icon(Icons.notifications, color: happiPrimary,),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                 // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PersonalInfo()));

                                                },
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundImage: AssetImage("assets/images/user.png"),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 15,
                                      ),


                                    ],
                                  ),
                                ),


                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.symmetric(horizontal: 20,),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Settings", style: TextStyle( fontSize: 48),),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                   // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyAppointments()));

                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.medical_services_outlined, size: 25,),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text("Wellbeing Kit", style: TextStyle(fontSize: 16),),
                                                    ],
                                                  ),
                                                ),
                                                Icon(Icons.arrow_forward_ios_outlined, size: 20,)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Divider(),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                  //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => FAQsScreens()));

                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.help_outline_outlined, size: 25,),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text("FAQs", style: TextStyle(fontSize: 16),),
                                                    ],
                                                  ),
                                                ),
                                                Icon(Icons.arrow_forward_ios_outlined, size: 20,)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Divider(),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [

                                                    Text("Notifications", style: TextStyle(fontSize: 16),),
                                                  ],
                                                ),
                                                CupertinoSwitch(
                                                  value: true,
                                                  onChanged: (bool value) {  },
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Divider(),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [

                                                    Text("Message Option", style: TextStyle(fontSize: 16),),
                                                  ],
                                                ),
                                                CupertinoSwitch(
                                                  value: true,
                                                  onChanged: (bool value) {  },
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Divider(),
                                          ],
                                        ),

                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => FAQsScreens()));

                                              },
                                              child: Row(
                                                children: [
                                                  Icon(Icons.person_2_outlined, size: 25,),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("My Profile", style: TextStyle(fontSize: 16),),
                                                ],
                                              ),
                                            ),
                                            Icon(Icons.arrow_forward_ios_outlined, size: 20,)
                                          ],
                                        ),
                                        SizedBox(
                                          height: 100,
                                        ),

                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                   // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInScreen()));

                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.logout, size: 25,),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text("Log Out", style: TextStyle(fontSize: 16),),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),

                                          ],
                                        ),


                                      ],
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              width: MediaQuery.of(context).size.width,

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
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SessionsScreen()));

                                    },
                                    child: Column(
                                      children: [
                                        Icon(Icons.home_outlined, color: Colors.black,),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text('Home', style: TextStyle(color: Colors.black, fontSize: 12),),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MySessions()));
                                    },
                                    child: Column(
                                      children: [
                                        Icon(Icons.connected_tv_rounded, color: Colors.black),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text('Sessions', style: TextStyle(color: Colors.black, fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){

                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AddButtonDialogBox();
                                        },
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Icon(Icons.add_circle_outline, color: Colors.black, size: 40,),

                                      ],
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){

                                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyChatScreen()));

                                    },
                                    child: Column(
                                      children: [
                                        Icon(Icons.mail_outline, color: Colors.black,),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text('Messages', style: TextStyle(color: Colors.black, fontSize: 12)),
                                      ],
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){

                                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SettingsScreen()));

                                    },
                                    child: Column(
                                      children: [
                                        Icon(Icons.settings, color: happiGreen,),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text('Settings', style: TextStyle(color: happiGreen, fontSize: 12)),
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
                  ],
                )
              ],
            )));
  }






}
