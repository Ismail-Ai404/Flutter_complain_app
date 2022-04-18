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
          // final user = FirebaseAuth.instance.currentUser!;
          // return Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(29.0),
          //       child: CircleAvatar(
          //         radius: 40,
          //         backgroundImage: NetworkImage(user.photoURL!),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 8,
          //     ),
          //     Text(
          //       'Name: ' + user.displayName!,
          //       style: TextStyle(color: Colors.white, fontSize: 16),
          //     ),
          //     SizedBox(
          //       height: 8,
          //     ),
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(29.0),
              child: Center(
                child: ElevatedButton(
                  child: Text('Make a Complaint'),
                  onPressed: () => Navigator.of(context)
                      .pushNamed(Home.routeToMakeAComplaint),
                ),
              ),
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
