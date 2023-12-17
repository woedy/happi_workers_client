import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Notifications/notifications.dart';
import 'package:happi_workers_client/ProfileScreen/user_profile_screen.dart';
import 'package:happi_workers_client/Sessions/session_history.dart';
import 'package:happi_workers_client/constants.dart';


class SessionsDetails extends StatefulWidget {
  const SessionsDetails({super.key});

  @override
  State<SessionsDetails> createState() => _SessionsDetailsState();
}

class _SessionsDetailsState extends State<SessionsDetails> {
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


                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        //color: Colors.red,

                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),

                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,

                                        children: [

                                          Text(
                                            "Webinar",
                                            style: TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w400,
                                                color: happiDark),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: (){
                                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => NotificationsScreen()));

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
                                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => UserProfileScreen()));

                                            },
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundImage: AssetImage("assets/images/user.png"),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),



                                ],
                              ),
                            ),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                         
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Text("You have no sessions, book now to begin", style: TextStyle(color: happiPrimary, fontSize: 12),),
                                   
                                        ],
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Up Coming Sessions", style: TextStyle(color: happiPrimary, fontSize: 12),),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 2,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                color: happiPrimary
                                            ),
                                          )
                                        ],
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SessionHistory()));

                                        },
                                          child: Text("History", style: TextStyle(color: Colors.red, fontSize: 12),)),

                                    ],
                                  ),




                                  SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: ListView(
                                      
                                      children: [

                                        Container(
                                          //height: 100,
                                          width: 360,
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: happiDark,
                                            borderRadius: BorderRadius.circular(20),

                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,

                                                  children: [

                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Expanded(child: Text("Appointment with Marvin", style: TextStyle(color: Colors.white, fontSize: 20),)),

                                                        Text("9/23/16 at 1500GMT", style: TextStyle(color: happiGreen, fontWeight: FontWeight.w900, fontSize: 12),),
                                                      ],
                                                    ),

                                                    SizedBox(
                                                      height: 5,
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
                                                      height: 5,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [


                                                  Row(
                                                    children: [
                                                      InkWell(
                                                        onTap: (){
                                                        /*  showDialog(
                                                            context: context,
                                                            builder: (BuildContext context) {
                                                              //  return LoadingDialogBox(text: "Loading Here....",); // Display your custom dialog
                                                              //return SuccessDialogBox();
                                                              return LoadingDialogBox(text: 'Wait as your session loads',);
                                                            },
                                                          );

                                                          Future.delayed(Duration(seconds: 2), () {
                                                            Navigator.of(context).pop();
                                                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => VideoCallScreen()));
                                                          });
                                    */
                                                        },
                                                        child: Container(
                                                            padding: EdgeInsets.all(10),
                                                            width: 120,
                                                            decoration: BoxDecoration(
                                                              color: happiGreen,
                                                              borderRadius: BorderRadius.circular(20),

                                                            ),

                                                            child: Center(child: Text("Join", style: TextStyle(color: Colors.black, fontSize: 10),))),
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

                                        SizedBox(
                                          height: 10,
                                        ),


                                        Container(
                                          //height: 100,
                                          width: 360,
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: happiDark,
                                            borderRadius: BorderRadius.circular(20),

                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,

                                                  children: [

                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Expanded(child: Text("Appointment with Marvin", style: TextStyle(color: Colors.white, fontSize: 20),)),

                                                        Text("9/23/16 at 1500GMT", style: TextStyle(color: happiGreen, fontWeight: FontWeight.w900, fontSize: 12),),
                                                      ],
                                                    ),

                                                    SizedBox(
                                                      height: 5,
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
                                                      height: 5,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [


                                                  Row(
                                                    children: [
                                                      InkWell(
                                                        onTap: (){
                                                          /*  showDialog(
                                                            context: context,
                                                            builder: (BuildContext context) {
                                                              //  return LoadingDialogBox(text: "Loading Here....",); // Display your custom dialog
                                                              //return SuccessDialogBox();
                                                              return LoadingDialogBox(text: 'Wait as your session loads',);
                                                            },
                                                          );

                                                          Future.delayed(Duration(seconds: 2), () {
                                                            Navigator.of(context).pop();
                                                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => VideoCallScreen()));
                                                          });
                                    */
                                                        },
                                                        child: Container(
                                                            padding: EdgeInsets.all(10),
                                                            width: 120,
                                                            decoration: BoxDecoration(
                                                              color: happiGreen,
                                                              borderRadius: BorderRadius.circular(20),

                                                            ),

                                                            child: Center(child: Text("Join", style: TextStyle(color: Colors.black, fontSize: 10),))),
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

                                        SizedBox(
                                          height: 10,
                                        ),


                                        Container(
                                          //height: 100,
                                          width: 360,
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: happiDark,
                                            borderRadius: BorderRadius.circular(20),

                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,

                                                  children: [

                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Expanded(child: Text("Appointment with Marvin", style: TextStyle(color: Colors.white, fontSize: 20),)),

                                                        Text("9/23/16 at 1500GMT", style: TextStyle(color: happiGreen, fontWeight: FontWeight.w900, fontSize: 12),),
                                                      ],
                                                    ),

                                                    SizedBox(
                                                      height: 5,
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
                                                      height: 5,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [


                                                  Row(
                                                    children: [
                                                      InkWell(
                                                        onTap: (){
                                                          /*  showDialog(
                                                            context: context,
                                                            builder: (BuildContext context) {
                                                              //  return LoadingDialogBox(text: "Loading Here....",); // Display your custom dialog
                                                              //return SuccessDialogBox();
                                                              return LoadingDialogBox(text: 'Wait as your session loads',);
                                                            },
                                                          );

                                                          Future.delayed(Duration(seconds: 2), () {
                                                            Navigator.of(context).pop();
                                                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => VideoCallScreen()));
                                                          });
                                    */
                                                        },
                                                        child: Container(
                                                            padding: EdgeInsets.all(10),
                                                            width: 120,
                                                            decoration: BoxDecoration(
                                                              color: happiGreen,
                                                              borderRadius: BorderRadius.circular(20),

                                                            ),

                                                            child: Center(child: Text("Join", style: TextStyle(color: Colors.black, fontSize: 10),))),
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
                                ],
                              ),
                            ),







                          ],
                        ),
                      ),
                    ),
                  ],
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
                            /*      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DashboardScreen()));
                        */  },
                          child: Column(
                            children: [
                              Icon(Icons.home_outlined, color: happiGreen,),
                              SizedBox(
                                height: 4,
                              ),
                              Text('Home', style: TextStyle(color: happiGreen, fontSize: 12),),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EarningsScreen()));
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

                            /*  showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AddButtonDialogBox();
                                          },
                                        );*/
                          },
                          child: Column(
                            children: [
                              Icon(Icons.add_circle_outline, color: Colors.black, size: 40,),

                            ],
                          ),
                        ),

                        InkWell(
                          onTap: (){

                            //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MeetYourClients()));

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

                            // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SettingsScreen()));

                          },
                          child: Column(
                            children: [
                              Icon(Icons.settings, color: Colors.black,),
                              SizedBox(
                                height: 4,
                              ),
                              Text('Settings', style: TextStyle(color: Colors.black, fontSize: 12)),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                )

              ],
            )));
  }






}
