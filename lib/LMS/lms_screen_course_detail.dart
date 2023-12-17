import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/LMS/lms_screen_course_detail2.dart';
import 'package:happi_workers_client/constants.dart';


class LMSCourseDetail extends StatefulWidget {
  const LMSCourseDetail({super.key});

  @override
  State<LMSCourseDetail> createState() => _LMSCourseDetailState();
}

class _LMSCourseDetailState extends State<LMSCourseDetail> {
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
                                    Text("After completing this unit, you’ll be able to",style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.check_box, color: happiGreen,),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Find your way around Trailhead.",style: TextStyle(fontSize: 15),),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.check_box, color: happiGreen,),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Start earning Trailhead badges.",style: TextStyle(fontSize: 15),),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(child: Text("Every journey starts with a single step—and so does every trail. ",style: TextStyle(fontSize: 15),)),
                                  ],
                                ),
                                SizedBox(height: 10),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(child: Text("You’ve already taken the first step of your Trailblazer journey by joining us here on Trailhead.  ",style: TextStyle(fontSize: 15),)),
                                  ],
                                ),
                                SizedBox(height: 10),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(child: Text("Now it’s time to learn how to navigate Trailhead—on desktop, your phone, or even in Slack. ",style: TextStyle(fontSize: 15),)),
                                  ],
                                ),
                                SizedBox(height: 10),
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            LMSCourseDetail2()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
