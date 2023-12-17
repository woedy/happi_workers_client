import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/constants.dart';


class RegisterWebinarsScreen extends StatefulWidget {
  const RegisterWebinarsScreen({super.key});

  @override
  State<RegisterWebinarsScreen> createState() => _RegisterWebinarsScreenState();
}

class _RegisterWebinarsScreenState extends State<RegisterWebinarsScreen> {
  final _formKey = GlobalKey<FormState>();

  String? appointmentType;

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Your header section with back button
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage("assets/images/Back_b.png"),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Back",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),


                // Heading "Your Courses"
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Register for",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "The Impact of Mental Health on Workplace Productivity",
                    style: TextStyle(
                      fontSize: 20,
                      color: happiPrimary,
                    ),
                  ),
                ),
                SizedBox(height: 20),



                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "A webinar to help teach and promote Teamwork",
                    style: TextStyle(
                      fontSize: 15,

                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "28th August, 2023",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700

                        ),
                      ),
                      Text(
                        "4:30Pm",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),





                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),

                    child: ListView(
                      children: [
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
                              labelText: "Phone Number",
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
                                return 'First name is required';
                              }
                              if (value.length < 3) {
                                return 'Name too short';
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
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.1))),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              //hintText: 'Enter Username/Email',

                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal),
                              labelText: "Industry",
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
                                return 'First name is required';
                              }
                              if (value.length < 3) {
                                return 'Name too short';
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
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.1))),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              //hintText: 'Enter Username/Email',

                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal),
                              labelText: "Reason for attending",
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
                                return 'First name is required';
                              }
                              if (value.length < 3) {
                                return 'Name too short';
                              }
                            },
                            maxLines: 5,
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
                        
                        Row(
                          children: [
                            Icon(Icons.check_box, color: happiPrimary,),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Accept terms and conditions", style: TextStyle(fontSize: 12, color: happiPrimary),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [

                            Text("Add webinar to calendar", style: TextStyle(fontSize: 12, color: Colors.red),)
                          ],
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
                ),

                InkWell(
                  onTap: () {
                    /*     Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            SignUpPassword()));*/
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: happiPrimary,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
