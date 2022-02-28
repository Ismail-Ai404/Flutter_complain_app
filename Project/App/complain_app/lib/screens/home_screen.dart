import 'package:flutter/material.dart';

//import './screens/tabs_screen.dart';
//import './make_complaint_screen.dart';

class Home extends StatelessWidget {
  static const routeToMakeAComplaint = '/make-a-complaint';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(29.0),
        child: Center(
          child: ElevatedButton(
            child: Text('Make a Complaint'),
            onPressed: () =>
                Navigator.of(context).pushNamed(routeToMakeAComplaint),
          ),
        ),
      ),
    );
  }
}
