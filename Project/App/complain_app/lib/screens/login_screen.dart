import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogInScreen extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  static const routeToMakeAComplaint = '/make-a-complaint';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(29.0),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.photoURL!),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Name: ' + user.displayName!,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: ElevatedButton(
            child: Text('Make a Complaint'),
            onPressed: () => Navigator.of(context)
                .pushNamed(LogInScreen.routeToMakeAComplaint),
          ),
        ),
      ],
    );
  }
}
