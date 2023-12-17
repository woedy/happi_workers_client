import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/constants.dart';


class EditPersonalInfo extends StatefulWidget {
  const EditPersonalInfo({super.key});

  @override
  State<EditPersonalInfo> createState() => _EditPersonalInfoState();
}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
  final _formKey = GlobalKey<FormState>();

  String? selectedGender;
  File? _image;


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
                                    children: [

                                      SizedBox(
                                        height: 20,
                                      ),

                                      Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 60,
                                            backgroundImage: AssetImage("assets/images/user.png"),
                                          ),

                                          Positioned(
                                            top: 30,
                                              right: 0,
                                              left: 0,
                                              child: Column(
                                                children: [
                                                  Icon(Icons.camera_alt, color: Colors.white,),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Upload an image",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              )
                                          )
                                        ],
                                      ),


                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Profile Picture",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: happiPrimary),
                                      ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: Form(
                                          key: _formKey,
                                          child: Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    border:
                                                    Border.all(color: Colors.black.withOpacity(0.1))),
                                                child: TextFormField(
                                                  style: TextStyle(color: Colors.black),
                                                  decoration: InputDecoration(
                                                    //hintText: 'Enter Username/Email',

                                                    hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.normal),
                                                    labelText: "First Name",
                                                    labelStyle: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black.withOpacity(0.5)),
                                                    enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white)),
                                                    focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white)),
                                                    border: InputBorder.none,
                                                  ),

                                                  inputFormatters: [
                                                    LengthLimitingTextInputFormatter(225),
                                                    PasteTextInputFormatter(),
                                                  ],
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'Contact name is required';
                                                    }
                                                    if (value.length < 3) {
                                                      return 'Contact too short';
                                                    }
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
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    border:
                                                    Border.all(color: Colors.black.withOpacity(0.1))),
                                                child: TextFormField(
                                                  style: TextStyle(color: Colors.black),
                                                  decoration: InputDecoration(
                                                    //hintText: 'Enter Username/Email',

                                                    hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.normal),
                                                    labelText: "Last Name",
                                                    labelStyle: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black.withOpacity(0.5)),
                                                    enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white)),
                                                    focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white)),
                                                    border: InputBorder.none,
                                                  ),

                                                  inputFormatters: [
                                                    LengthLimitingTextInputFormatter(225),
                                                    PasteTextInputFormatter(),
                                                  ],
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'Contact name is required';
                                                    }
                                                    if (value.length < 3) {
                                                      return 'Contact too short';
                                                    }
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
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    border:
                                                    Border.all(color: Colors.black.withOpacity(0.1))),
                                                child: TextFormField(
                                                  style: TextStyle(color: Colors.black),
                                                  decoration: InputDecoration(
                                                    //hintText: 'Enter Username/Email',

                                                    hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.normal),
                                                    labelText: "Email",
                                                    labelStyle: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black.withOpacity(0.5)),
                                                    enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white)),
                                                    focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white)),
                                                    border: InputBorder.none,
                                                  ),

                                                  inputFormatters: [
                                                    LengthLimitingTextInputFormatter(225),
                                                    PasteTextInputFormatter(),
                                                  ],
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'Contact name is required';
                                                    }
                                                    if (value.length < 3) {
                                                      return 'Contact too short';
                                                    }
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


                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    border:
                                                    Border.all(color: Colors.black.withOpacity(0.1))),
                                                child: TextFormField(
                                                  style: TextStyle(color: Colors.black),
                                                  decoration: InputDecoration(
                                                    //hintText: 'Enter Username/Email',

                                                    hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.normal),
                                                    labelText: "Work ID",
                                                    labelStyle: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black.withOpacity(0.5)),
                                                    enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white)),
                                                    focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.white)),
                                                    border: InputBorder.none,
                                                  ),

                                                  inputFormatters: [
                                                    LengthLimitingTextInputFormatter(225),
                                                    PasteTextInputFormatter(),
                                                  ],
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'Contact name is required';
                                                    }
                                                    if (value.length < 3) {
                                                      return 'Contact too short';
                                                    }
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


                                              SizedBox(
                                                height: 50,

                                              ),


                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [


                                                    InkWell(
                                                      onTap: () {
                                                       // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EditMyPersonalInfo()));
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.all(20),
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
