import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/WellBeing/well_being_practitioners.dart';
import 'package:happi_workers_client/constants.dart';


class WellBeingKit extends StatefulWidget {
  const WellBeingKit({super.key});

  @override
  State<WellBeingKit> createState() => _WellBeingKitState();
}

class _WellBeingKitState extends State<WellBeingKit> {
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
                    "Your Kit",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Which area would you like to add in your 1 -1 appointment?", style: TextStyle(color: happiPrimary, fontSize: 18),),
                ),

                SizedBox(height: 30),

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
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: happiPrimary,
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Icon(Icons.share, color: Colors.white,),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("My Relationship ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                              Icon(Icons.circle_outlined, color: happiPrimary,)
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Text("Relationships, parenting, Communication.", style: TextStyle( fontSize: 15),),
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                                SizedBox(height: 15),
                                Divider(),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),

                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: happiGreen,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("My Profession ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                              Icon(Icons.circle_outlined, color: happiPrimary,)
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Text("Burnout, Managing, career, Development", style: TextStyle( fontSize: 15),),
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                                SizedBox(height: 15),
                                Divider(),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),

                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: happiLghtPurple,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Icon(Icons.insert_emoticon_outlined, color: Colors.white,),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("My Emotions ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                              Icon(Icons.circle_outlined, color: happiPrimary,)
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Text("Anxiety, depression, trauma, mindfulness", style: TextStyle( fontSize: 15),),
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                                SizedBox(height: 15),
                                Divider(),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),


                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: happiGreen,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Icon(Icons.person, color: Colors.black,),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("My Physical ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                              Icon(Icons.circle_outlined, color: happiPrimary,)
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Text("Physical activity, sleep substitution", style: TextStyle( fontSize: 15),),
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                                SizedBox(height: 15),
                                Divider(),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),

                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: happiLghtPurple,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Icon(Icons.wallet, color: Colors.black,),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("My Finances", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                              Icon(Icons.circle_outlined, color: happiPrimary,)
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Text("Budgeting, saving, debt, investment", style: TextStyle( fontSize: 15),),
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                                SizedBox(height: 15),
                                Divider(),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            WellBeingPractitioners()));
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
