import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/constants.dart';


class ProfileCustomization9 extends StatefulWidget {
  const ProfileCustomization9({super.key});

  @override
  State<ProfileCustomization9> createState() => _ProfileCustomization9State();
}

class _ProfileCustomization9State extends State<ProfileCustomization9> {
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
                                                    "Booking\nConfirmed",
                                                    style: TextStyle(
                                                        fontSize: 48,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),


                                            SizedBox(
                                              height: 20,
                                            ),

                                          Column(

                                            children: [
                                              CircleAvatar(
                                                radius: 50,
                                                backgroundImage: AssetImage("assets/images/user.png"),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Dianne Russell",
                                                style: TextStyle(
                                                    fontSize: 25,

                                                    color: happiDark),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(20),
                                                decoration: BoxDecoration(
                                                  color: happiPrimary,
                                                  borderRadius: BorderRadius.circular(50)
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                               
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          "Date:",
                                                          style: TextStyle(
                                                              fontSize: 16,

                                                              color: happiGreen),
                                                        ),
                                                        Text(
                                                          "21st August 2023",
                                                          style: TextStyle(
                                                              fontSize: 16,

                                                              color: Colors.white),
                                                        ),

                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Time:",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                        
                                                                  color: happiGreen),
                                                            ),
                                                            Text(
                                                              "11:00am",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                        
                                                                  color: Colors.white),
                                                            ),
                                                        
                                                          ],
                                                        ),
                                                        Icon(Icons.arrow_drop_down, color: Colors.white,)
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start ,
                                                children: [
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
                                                    ],
                                                  ),
                                                ],
                                              ),

                                            ],
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
                                                    "Continue",
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
