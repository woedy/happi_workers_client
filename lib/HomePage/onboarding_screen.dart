import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/constants.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                  height: 51,
                                  image:
                                  AssetImage("assets/images/Happiworkers Full color1@4x 2.png")),

                              Row(
                                children: [
                                  Text(
                                    "Hi Julia!",
                                    style: TextStyle(
                                        fontSize: 16,
                                       ),
                                  ),

                                  SizedBox(
                                    width: 5,
                                  ),

                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage("assets/images/user.png"),

                                  ),
                                ],
                              )

                            ],
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
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    "Onboarding",
                                                    style: TextStyle(
                                                        fontSize: 48,
                                                        fontWeight: FontWeight.w400,
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
                                                    "To begin on the Happiworkers platform select a tab",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400,
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

                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex:4,
                                                    child: Container(
                                                      padding: EdgeInsets.all(20),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                          gradient: LinearGradient(
                                                              begin: Alignment.topCenter,
                                                              end: Alignment.bottomCenter,
                                                              colors: <Color>[happiGreen, Colors.white])
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            "Book a Session",
                                                            style: TextStyle(
                                                                fontSize: 36,
                                                                fontWeight: FontWeight.w400,
                                                                color: Colors.black),
                                                          ),
                                                    
                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          Text(
                                                            "Personalized care for everybody",
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400,
                                                                color: Colors.black),
                                                          ),
                                                    
                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                              color: happiGreen,
                                                              borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            child: Text(
                                                              "Continue",
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight: FontWeight.w400,
                                                                  color: happiDark),
                                                            ),
                                                          ),

                                                          SizedBox(
                                                            height: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Expanded(
                                                    flex:3,
                                                    child: Container(
                                                      padding: EdgeInsets.all(20),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                        color: happiDark
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Image(image: AssetImage("assets/icons/arrowup.png")),

                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          Text(
                                                            "Features, articles, and courses",
                                                            style: TextStyle(
                                                                fontSize: 25,
                                                                fontWeight: FontWeight.w400,
                                                                color: Colors.white),
                                                          ),



                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            child: Text(
                                                              "Visit here",
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight: FontWeight.w400,
                                                                  color: happiDark),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),


                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex:4,
                                                    child: Container(
                                                      padding: EdgeInsets.all(20),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(20),
                                                          gradient: LinearGradient(
                                                              begin: Alignment.topLeft,
                                                              end: Alignment.bottomRight,
                                                              colors: <Color>[happiPrimary, Colors.white])
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(
                                                                "Available\nPractitioners",
                                                                style: TextStyle(
                                                                    fontSize: 25,
                                                                    fontWeight: FontWeight.w400,
                                                                    color: Colors.black),
                                                              ),
                                                              Expanded(
                                                                child: Container(
                                                                  child: Stack(
                                                                    children: [
                                                                      Positioned(
                                                                        left: 20,
                                                                        child: CircleAvatar(
                                                                          backgroundImage: AssetImage("assets/images/user3.png"),
                                                                        ),
                                                                      ),
                                                                      CircleAvatar(
                                                                        backgroundImage: AssetImage("assets/images/user2.png"),
                                                                      ),

                                                                    ],
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),



                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                                color: happiPrimary,
                                                                borderRadius: BorderRadius.circular(10)
                                                            ),
                                                            child: Text(
                                                              "View All",
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight: FontWeight.w400,
                                                                  color: Colors.white),
                                                            ),
                                                          ),


                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )

                                            ],
                                          ),
                                            SizedBox(
                                              height: 15,
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
                                                    "Go To Dashboard",
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
