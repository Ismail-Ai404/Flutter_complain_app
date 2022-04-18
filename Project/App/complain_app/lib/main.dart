import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/auth_screen.dart';
import './screens/drawer_screen.dart';
import './providers/google_sign_in.dart';
import './screens/home_screen.dart';
import './screens/make_complaint_screen.dart';
import './screens/send_complain_screen.dart';
import './screens/tabs_screen.dart';

//import './screens/notification_screen.dart';

void main() => runApp(MyApp());

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
        initialRoute: '/',
        routes: {
          '/hey': (context) => AuthScreen(),
          DrawerScreen().logoutroute: (context) => AuthScreen(),
          Home.routeToMakeAComplaint: (context) => MakeComplaintScreen(2),
          '/': (ctx) => TabsScreen(),
          SendComplainScreen.routeName: (ctx) => SendComplainScreen(),
          SendComplainScreen.routeComplainToSpeech: (context) =>
              SendComplainScreen(),
        },
        //dsjnkjn
      ),
    );
  }
}
