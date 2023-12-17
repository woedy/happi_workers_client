import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom9.dart';
import 'package:happi_workers_client/constants.dart';


class ProfileCustomization8 extends StatefulWidget {
  const ProfileCustomization8({super.key});

  @override
  State<ProfileCustomization8> createState() => _ProfileCustomization8State();
}

class _ProfileCustomization8State extends State<ProfileCustomization8> {
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
                                                    "Your\nAppointment",
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

                                            Container(
                                              padding: EdgeInsets.all(20),
                                              width: MediaQuery.of(context).size.width,
                                              decoration: BoxDecoration(
                                                color: happiGreen.withOpacity(0.4),
                                                borderRadius: BorderRadius.circular(2)
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Confirmed Booking For Session",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.red),
                                                  ),

                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Your Time zone: (GMT+00:00) Dublin, Edinburg, Libson, London",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),

                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    height: 300,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Any specific concerns you want to discuss during your appointment:",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors.black),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: Colors.black.withOpacity(0.1))),
                                                          child: TextFormField(
                                                            style: TextStyle(color: Colors.black),
                                                            decoration: InputDecoration(
                                                              //hintText: 'Enter Username/Email',


                                                              hintStyle: TextStyle(
                                                                  color: Colors.grey,
                                                                  fontWeight: FontWeight.normal),
                                                             // labelText: "Last Name",
                                                              labelStyle: TextStyle(
                                                                  fontSize: 13,
                                                                  color: Colors.black.withOpacity(0.5)),
                                                              enabledBorder: UnderlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(color: Colors.white)),
                                                              focusedBorder: UnderlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(color: Colors.white)),
                                                              border: InputBorder.none,
                                                            ),
                                                            maxLines: 7,
                                                            inputFormatters: [
                                                              LengthLimitingTextInputFormatter(225),
                                                              PasteTextInputFormatter(),
                                                            ],
                                                            validator: (value) {
                                                              if (value!.isEmpty) {
                                                                return 'Email is required';
                                                              }
                                                              if (value.length < 3) {
                                                                return 'Name too short';
                                                              }
                                                              String pattern =
                                                                  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                                                                  r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                                                                  r"{0,253}[a-zA-Z0-9])?)*$";
                                                              RegExp regex = RegExp(pattern);
                                                              if (!regex.hasMatch(value))
                                                                return 'Enter a valid email address';

                                                              return null;
                                                            },
                                                            textInputAction: TextInputAction.next,
                                                            autofocus: false,
                                                            onSaved: (value) {
                                                              setState(() {
                                                                //email = value;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),


                                            SizedBox(
                                              height: 30,
                                            ),

                                            InkWell(
                                              onTap: () {

                                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfileCustomization9()));

                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(15),
                                                decoration: BoxDecoration(
                                                    color: happiPrimary,
                                                    borderRadius: BorderRadius.circular(15)),
                                                child: Center(
                                                  child: Text(
                                                    "Confirm Appointment",
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
