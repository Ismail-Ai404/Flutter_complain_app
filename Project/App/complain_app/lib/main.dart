import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';
import './screens/home_screen.dart';
import './screens/send_complain_screen.dart';

import './screens/make_complaint_screen.dart';
import './screens/notification_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.blueGrey[900],
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      //home: MakeComplaintScreen(),
      initialRoute: '/',
      routes: {
        Home.routeToMakeAComplaint: (context) => MakeComplaintScreen(),
        '/': (ctx) => TabsScreen(),
        SendComplainScreen.routeName: (ctx) => SendComplainScreen(),
      },
    );
  }
}
