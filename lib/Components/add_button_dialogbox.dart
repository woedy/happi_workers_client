import 'package:flutter/material.dart';
import 'package:happi_workers_client/LMS/lms_screen_course.dart';
import 'package:happi_workers_client/Practitioners/all_practitioners.dart';
import 'package:happi_workers_client/Sessions/session_history.dart';
import 'package:happi_workers_client/constants.dart';


class AddButtonDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), // Border radius of 30
            color: happiDark, // Blue color
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AllPractitioners()));

                },
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  SizedBox(),
                      Expanded(
                        child: Text(
                          "Book an appointment with a practitioner",
                          style: TextStyle(
                              fontSize: 15,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_sharp, ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SessionHistory()));

                },
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  SizedBox(),
                      Text(
                        "Browse booking history",
                        style: TextStyle(
                            fontSize: 15,
                        ),
                      ),
                      Icon(Icons.arrow_forward_sharp, ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LMSCourseScreen()));

                },
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text(
                        "Go To LMS",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Icon(Icons.arrow_forward_sharp, ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
