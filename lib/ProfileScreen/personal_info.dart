import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/ProfileScreen/edit_contact_info.dart';
import 'package:happi_workers_client/ProfileScreen/edit_emergency_contact_info.dart';
import 'package:happi_workers_client/ProfileScreen/edit_password.dart';
import 'package:happi_workers_client/ProfileScreen/edit_personal_Info.dart';
import 'package:happi_workers_client/ProfileScreen/user_profile_screen.dart';
import 'package:happi_workers_client/constants.dart';


class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
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
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Your Personal\nInfos",
                                            style: TextStyle(
                                                fontSize: 48,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 30,
                                      ),

                                      Expanded(
                                        child: ListView(
                                          //scrollDirection: Axis.horizontal,
                                          children: [

                                            InkWell(
                                              onTap: (){
                                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EditPersonalInfo()));

                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(30),
                                                decoration: BoxDecoration(
                                                    color: happiDark,
                                                    borderRadius: BorderRadius.circular(15)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Icon(Icons.person_2_outlined, color: Colors.white,),
                                                    Text(
                                                      "My profile",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                    ),
                                                    Icon(Icons.arrow_forward_sharp, color: Colors.white,),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            InkWell(
                                              onTap: (){
                                               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EditPassword()));

                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(30),
                                                decoration: BoxDecoration(
                                                    color: happiDark,
                                                    borderRadius: BorderRadius.circular(15)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Icon(Icons.lock_outline, color: Colors.white,),
                                                    Text(
                                                      "Password & Email",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                    ),
                                                    Icon(Icons.arrow_forward_sharp, color: Colors.white,),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            InkWell(
                                              onTap: (){
                                               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EditContactInfo()));

                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(30),
                                                decoration: BoxDecoration(
                                                    color: happiDark,
                                                    borderRadius: BorderRadius.circular(15)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Icon(Icons.list_alt_outlined, color: Colors.white,),
                                                    Text(
                                                      "Contact Info",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                    ),
                                                    Icon(Icons.arrow_forward_sharp, color: Colors.white,),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            InkWell(
                                              onTap: (){
                                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EditEmergencyContactInfo()));

                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(30),
                                                decoration: BoxDecoration(
                                                    color: happiDark,
                                                    borderRadius: BorderRadius.circular(15)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Icon(Icons.emergency_outlined, color: Colors.white,),
                                                    Text(
                                                      "Emergency Info",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                    ),
                                                    Icon(Icons.arrow_forward_sharp, color: Colors.white,),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            InkWell(
                                              onTap: (){
                                               // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyPaymentDetails()));

                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(30),
                                                decoration: BoxDecoration(
                                                    color: happiDark,
                                                    borderRadius: BorderRadius.circular(15)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Icon(Icons.medical_information_outlined, color: Colors.white,),
                                                    Text(
                                                      "Medical Records",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                    ),
                                                    Icon(Icons.arrow_forward_sharp, color: Colors.white,),
                                                  ],
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
