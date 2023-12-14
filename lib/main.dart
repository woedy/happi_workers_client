import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happi_workers_client/Components/theme.dart';
import 'package:happi_workers_client/HomePage/onboarding_screen.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom1.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom2.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom3.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom4.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom5.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom6.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom7.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom8.dart';
import 'package:happi_workers_client/ProfileCustom/profile_custom9.dart';
import 'package:happi_workers_client/Welcome/welcome_page1.dart';
import 'package:happi_workers_client/constants.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => {runApp(MyApp())});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Hide the keyboard when tapping outside the text field
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Happiworkers',
        theme: theme(),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? api_key = "";
  Future? _user_api;

  @override
  void initState() {
    super.initState();
    _user_api = apiKey();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _user_api,
        builder: (BuildContext context, AsyncSnapshot snapshot) {

          //return api_key == null ? SplashScreen() : HomeScreen();
          return OnboardingScreen();

        });
  }

  Future apiKey() async {
    api_key = await getApiPref();
  }
}
