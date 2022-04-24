import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/speech_screen.dart';
//import 'package:flutter_complete_guide/screens/login_screen.dart';
import 'package:provider/provider.dart';

import './screens/auth_screen.dart';
import './screens/drawer_screen.dart';
import './providers/google_sign_in.dart';
import './screens/home_screen.dart';
import './screens/make_complaint_screen.dart';
import './screens/send_complain_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import './screens/tabs_screen.dart';
import './screens/speech_screen.dart';
//
//import './screens/tabs_screen.dart';

//import './screens/notification_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: 'ComplainApp',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.blueGrey[900],
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        //home: MakeComplaintScreen(),
        initialRoute: '/b',
        routes: {
          '/': (context) => AuthScreen(),
          '/b': (context) => TabsScreen(),
          DrawerScreen().logoutroute: (context) => AuthScreen(),
          Home.routeToMakeAComplaint: (context) => MakeComplaintScreen(2),
          AuthScreen.routeName: (ctx) => TabsScreen(),
          SendComplainScreen.routeName: (ctx) => SendComplainScreen(),
          SendComplainScreen.routeComplainToSpeech: (context) => SpeechScreen(),
        },
        //dsjnkjn
      ),
    );
  }
}
