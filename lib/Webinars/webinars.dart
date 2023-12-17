import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/constants.dart';


class WebinarsScreen extends StatefulWidget {
  const WebinarsScreen({super.key});

  @override
  State<WebinarsScreen> createState() => _WebinarsScreenState();
}

class _WebinarsScreenState extends State<WebinarsScreen> {
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
                    "Webinars",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),



                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border:
                      Border.all(color: Colors.black.withOpacity(0.1))),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            //hintText: 'Enter Username/Email',

                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.normal),
                            labelText: "Search here",

                            labelStyle: TextStyle(fontSize: 13,
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

                          textInputAction: TextInputAction.next,
                          autofocus: false,
                          onSaved: (value) {
                            setState(() {
                              //email = value;
                            });
                          },
                        ),
                      ),
                      Row(
                        children: [

                          Icon(Icons.search),

                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),



                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),

                    child: ListView(
                      children: [

                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: happiDark,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/doctor.png"),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Expanded(child: Column(
                                children: [
                                  Text("The Impact of Mental Health on Workplace Productivity", style: TextStyle(fontSize: 12, color: Colors.white),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("A webinar to help teach and promote Teamwork", style: TextStyle(fontSize: 10, color: Colors.white),),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: happiGreen,
                                          borderRadius: BorderRadius.circular(7)
                                        ),
                                        child:Center(child: Text("Register", style: TextStyle(fontSize: 10, color: Colors.black),)),

                                      )
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: happiDark,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/doctor.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Expanded(child: Column(
                                children: [
                                  Text("The Impact of Mental Health on Workplace Productivity", style: TextStyle(fontSize: 12, color: Colors.white),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("A webinar to help teach and promote Teamwork", style: TextStyle(fontSize: 10, color: Colors.white),),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(7)
                                        ),
                                        child:Center(child: Text("Joined", style: TextStyle(fontSize: 10, color: happiGreen),)),

                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: happiGreen,
                                            borderRadius: BorderRadius.circular(7)
                                        ),
                                        child:Center(child: Text("Register", style: TextStyle(fontSize: 10, color: Colors.black),)),

                                      ),
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
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
                        "Back to Dashboard",
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
