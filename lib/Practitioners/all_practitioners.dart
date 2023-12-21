import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/constants.dart';


class AllPractitioners extends StatefulWidget {
  const AllPractitioners({super.key});

  @override
  State<AllPractitioners> createState() => _AllPractitionersState();
}

class _AllPractitionersState extends State<AllPractitioners> {
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
                    "All\nPractitioners",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),


                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),

                    child: Text("Please select your therapist", style: TextStyle(color: happiPrimary, fontSize: 20),)),
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
                          Icon(Icons.list_alt_outlined),
                          SizedBox(
                            width: 10 ,
                          ),
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

                    child: GridView.builder(
                      itemCount: 20, // Number of items in the grid
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 8.0, // Spacing between columns
                        mainAxisSpacing: 8.0, // Spacing between rows
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        // Replace this container with your custom widget for each grid item
                        return Container(

                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white

                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage("assets/images/user3.png"),
                                  ),

                                ],
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Annette Black",  style: TextStyle(fontSize: 15)),
                                  Text("CLINICAL PSYCHOLOGIST",  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, )),
                                  Container(
                                      padding: EdgeInsets.all(2),
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: happiGreen.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Center(child: Text("English",  style: TextStyle(fontSize: 10, color: Colors.green)))),
                                ],
                              ),


                            ],
                          ),
                        );
                      },
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
