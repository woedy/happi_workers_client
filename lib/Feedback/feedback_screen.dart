import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Sessions/sessions_screen.dart';
import 'package:happi_workers_client/constants.dart';


class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
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
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Your Feedback",
                                              style: TextStyle(
                                                  fontSize: 48,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),

                                      Form(
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
                                                  labelText: "Specialization",
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
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(15),
                                                  border:
                                                  Border.all(color: Colors.black.withOpacity(0.1))),
                                              child: GestureDetector(
                                                onTap: () {
                                                  _showAppointmentTypeSelectionModal(context);
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(10),

                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      border: Border.all(
                                                          color: Colors.white.withOpacity(0.1))
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        appointmentType ?? 'Appointment Type',
                                                        style: TextStyle(fontSize: 13,
                                                            color: Colors.black.withOpacity(0.5)),
                                                      ),
                                                      Icon(Icons.arrow_drop_down, size: 30, color: Colors.black,),
                                                    ],
                                                  ),
                                                ),
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
                                                  labelText: "Your Feedback",
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
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      ),

                                      Column(
                                        children: [
                                          Text("What is your rating?", style: TextStyle(color: Colors.red, fontSize: 15),),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star, color: Colors.yellow, size: 20,),
                                              Icon(Icons.star, color: Colors.yellow, size: 20,),
                                              Icon(Icons.star, color: Colors.yellow, size: 20,),
                                              Icon(Icons.star, color: Colors.yellow, size: 20,),
                                              Icon(Icons.star_border, size: 20,),

                                            ],
                                          )
                                        ],
                                      ),

                                      SizedBox(
                                        height: 30,
                                      ),




                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SessionsScreen()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              color: happiPrimary,
                                              borderRadius: BorderRadius.circular(15)),
                                          child: Center(
                                            child: Text(
                                              "Submit",
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


  void _showAppointmentTypeSelectionModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              ListTile(
                title: const Text('Phone Call'),
                onTap: () {
                  setState(() {
                    appointmentType = 'Phone Call';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Video Call'),
                onTap: () {
                  setState(() {
                    appointmentType = 'Video Call';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Text Message'),
                onTap: () {
                  setState(() {
                    appointmentType = 'Text Message';
                  });
                  Navigator.pop(context);
                },
              ),


            ],
          ),
        );
      },
    );
  }






}
