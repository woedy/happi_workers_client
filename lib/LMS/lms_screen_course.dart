import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/LMS/lms_screen_course_detail.dart';
import 'package:happi_workers_client/Sessions/sessions_screen.dart';
import 'package:happi_workers_client/constants.dart';


class LMSCourseScreen extends StatefulWidget {
  const LMSCourseScreen({super.key});

  @override
  State<LMSCourseScreen> createState() => _LMSCourseScreenState();
}

class _LMSCourseScreenState extends State<LMSCourseScreen> {
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
                SizedBox(height: 30),

                // Heading "Your Courses"
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Your Courses",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,),
                  margin: EdgeInsets.symmetric(horizontal: 10,),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
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
                      labelText: "Search Course here",
                      suffixIcon: Icon(Icons.search),
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

                SizedBox(
                  height: 20,
                ),


                // Scrollable content between heading and button
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LMSCourseDetail()));
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 89,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/doctor.png"),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Tax Academy for Beginners", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),),
                                    Text("21/04/2023", style: TextStyle(),),
                                    Text("+100 Points", style: TextStyle(fontWeight: FontWeight.w700, color: happiPrimary),),

                                  ],
                                ),

                              ),
                              SizedBox(
                                width: 10,
                              ),


                              Column(
                                children: [
                                  Icon(Icons.forward_outlined, color: Colors.black,),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(Icons.delete_outline, color: Colors.red,)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            SessionsScreen()));
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
