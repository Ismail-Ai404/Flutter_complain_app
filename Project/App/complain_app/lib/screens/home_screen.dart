import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/make_complaint_screen.dart';

class Home extends StatelessWidget {
  static const routeToMakeAComplaint = '/make-a-complaint';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const Text('Homepage'),
      ),
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
