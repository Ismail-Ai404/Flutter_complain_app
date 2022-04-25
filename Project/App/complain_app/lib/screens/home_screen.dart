import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/auth_screen.dart';
//import 'package:firebase_core/firebase_core.dart';

//import 'tabs_screen.dart';

//import './screens/tabs_screen.dart';
//import './make_complaint_screen.dart';

class Home extends StatefulWidget {
  static const routeToMakeAComplaint = '/home_to_complain';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Something went wrong'),
          );
        } else if (snapshot.hasData) {
          //Navigator.of(context).pop(true);
          //final user = FirebaseAuth.instance.currentUser!;
          return Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 45,
                    backgroundImage: NetworkImage(
                        'https://i0.wp.com/resultinbd.net/wp-content/uploads/2015/04/NSU-logo.gif?fit=500%2C325'
                        //'assets/images/avatars/Doodle-Avatar-01.svg'),
                        ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: Center(
                    child: ElevatedButton(
                      child: Text('Make a Complaint'),
                      onPressed: () => Navigator.of(context)
                          .pushNamed(Home.routeToMakeAComplaint),
                    ),
                  ),
                ),
              ],
            ),
          );

          //return TabsScreen();
        } else {
          return AuthScreen();
        }
      },
    );
  }
}
