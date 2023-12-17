import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom2.dart';
import 'package:happi_workers_client/constants.dart';




class ProfileCustomization1 extends StatefulWidget {
  const ProfileCustomization1({super.key});

  @override
  State<ProfileCustomization1> createState() => _ProfileCustomization1State();
}

class _ProfileCustomization1State extends State<ProfileCustomization1> {
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
                                    height: 51,
                                    image:
                                    AssetImage("assets/images/happi_logo.png")),
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
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Hey Julia Reddington!",
                                              style: TextStyle(
                                                  fontSize: 48,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "You can upload a picture and tell us which name you would prefer to be called",
                                              style: TextStyle(
                                                  fontSize: 12,

                                                  color: happiPrimary),
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(

                                            padding: EdgeInsets.all(50),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                                border:
                                                Border.all(color: Colors.black.withOpacity(0.1)),
                                              borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(Icons.image, size: 50,),
                                                SizedBox(
                                                  height: 10,
                                                ),

                                                Text(
                                                  "Upload an Image",
                                                  style: TextStyle(
                                                      fontSize: 12,),
                                                )

                                              ],
                                            ),
                                          )
                                        ],
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
                                            labelText: "Preferred Name",
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
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(225),
                                            PasteTextInputFormatter(),
                                          ],
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Preferred Name is required';
                                            }
                                            if (value.length < 3) {
                                              return 'Preferred Name too short';
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
                                      SizedBox(
                                        height: 100,
                                      ),

                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfileCustomization2()));
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
                                      SizedBox(
                                        height: 20,
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
