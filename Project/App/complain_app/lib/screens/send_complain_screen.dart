import 'package:flutter/material.dart';

class SendComplainScreen extends StatelessWidget {
  // final String id;
  // final String name;
  // final String dept;

  // SendComplainScreen(this.id, this.name, this.dept);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final name = routeArgs['name'];
    final id = routeArgs['id'];
    final dept = routeArgs['department'];

    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const Text('Let\'s send that complaint'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(29.0),
        child: Center(
          child: Column(
            children: [
              Text('$name'),
              Text('$dept'),
              Text('$id'),
            ],
          ),
        ),
      ),
    );
  }
}
