import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/constants.dart';


class LMSCourseDetail2 extends StatefulWidget {
  const LMSCourseDetail2({super.key});

  @override
  State<LMSCourseDetail2> createState() => _LMSCourseDetail2State();
}

class _LMSCourseDetail2State extends State<LMSCourseDetail2> {
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
                    "Tax Academy for Beginners",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Learning Objectives",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),



                // Scrollable content between heading and button
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(

                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/doctor.png"),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Icon(Icons.play_circle, size: 50,color: Colors.white,),
                                )
                              ],
                            ),
                            SizedBox(height: 20),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Time Estimated",style: TextStyle(fontSize: 12, color: happiPrimary),),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Icon(Icons.check_circle, size: 15,),
                                            SizedBox(width: 5),
                                            Row(
                                              children: [
                                                Text("About ",style: TextStyle(fontSize: 12, color: happiPrimary),),
                                                Text("5 mins",style: TextStyle(fontSize: 12, color: happiPrimary, fontWeight: FontWeight.w700),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Topics",style: TextStyle(fontSize: 12, color: happiPrimary),),
                                        SizedBox(height: 20),
                                        Text("Learning Objectives",style: TextStyle(fontSize: 12,),),

                                        SizedBox(height: 20),
                                        Text("Sum It Up",style: TextStyle(fontSize: 12,),),


                                        SizedBox(height: 20),
                                        Text("Resources",style: TextStyle(fontSize: 12,),),


                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Icon(Icons.add_circle_outlined, color: happiGreen,),
                                            SizedBox(width: 10),
                                            Text("+100 Points",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: happiPrimary),),
                                          ],
                                        ),

                                        SizedBox(height: 20),
                                      ],
                                    ),
                                  ],
                                ),




                              ],
                            ),


                          ],
                        )
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
                        "Enrol Into Course",
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
