import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Authentication/SignIn/sign_in_screen.dart';
import 'package:happi_workers_client/constants.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({super.key});

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
  final _formKey = GlobalKey<FormState>();

  var show_password = false;
  var terms_check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
            bottom: false,

            child: Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: Image(image: AssetImage("assets/images/stroke.png"))),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Image(
                        height: 280,
                        image: AssetImage("assets/images/conner.png"))),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child:
                        Image(image: AssetImage("assets/images/square_c.png"))),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          //color: Colors.red,
          padding: EdgeInsets.all(20),
          child: ListView(
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                      height: 51,
                      image: AssetImage("assets/images/happi_logo.png")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w400,
                        color: happiPrimary),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                          //hintText: 'Enter Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  show_password = !show_password;
                                });
                              },
                              icon: Icon(
                                show_password
                                    ? Icons.remove_red_eye_outlined
                                    : Icons.remove_red_eye,
                                color: Colors.black,
                              ),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                            labelText: "Password",
                            labelStyle:
                            TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            border: InputBorder.none),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(225),
                          PasteTextInputFormatter(),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required';
                          }
                          if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%^&*])')
                              .hasMatch(value)) {

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("- Password must be at least 8 characters long\n- Must include at least one uppercase letter,\n- One lowercase letter, one digit,\n- And one special character",),
                                backgroundColor: Colors.red,
                              ),
                            );
                            return '';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            //password = value;
                          });
                        },
                        textInputAction: TextInputAction.next,
                        obscureText: show_password ? false : true,
                        onSaved: (value) {
                          setState(() {
                            //password = value;
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
                          //hintText: 'Enter Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  show_password = !show_password;
                                });
                              },
                              icon: Icon(
                                show_password
                                    ? Icons.remove_red_eye_outlined
                                    : Icons.remove_red_eye,
                                color: Colors.black,
                              ),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                            labelText: "Re-Enter Password",
                            labelStyle:
                            TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            border: InputBorder.none),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(225),
                          PasteTextInputFormatter(),
                        ],
                        validator: (value) {
                          /*if (value!.isEmpty) {
                            return 'Password is required';
                          }
                          if (value != password) {
                            return 'Passwords do not match';
                          }
                          return null;*/
                        },
                        onChanged: (value) {
                          setState(() {
                            //password_confirmation = value;
                          });
                        },
                        textInputAction: TextInputAction.next,
                        obscureText: show_password ? false : true,
                        onSaved: (value) {
                          setState(() {
                           // password_confirmation = value;
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
              InkWell(
                onTap: () {
                 // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Onboarding1()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: happiPrimary,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  InkWell(
                    onTap: (){

                      setState(() {
                        terms_check = !terms_check;
                      });

                    },

                      child: Icon(

                        terms_check
                            ? Icons.check_box
                            :Icons.check_box_outline_blank ,

                        color: happiGreen,)),
                  SizedBox(
                    width: 10,
                  ),
                  Text("I agree to the Terms & Conditions of this platform", style: TextStyle(fontSize: 13),),
                ],
              ),
              SizedBox(
                height: 150,
              ),

              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ", style: TextStyle(fontSize: 12),),
                    Text("Sign in here", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: happiPrimary),),
                  ],
                ),
              ),

                ],
              )
            ],
          ),
        )
      ],
    )));
  }
}
