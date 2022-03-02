import 'package:flutter/material.dart';

class SendComplainScreen extends StatelessWidget {
  // final String id;
  // final String name;
  // final String dept;
  static const routeName = '/after-complainagainst-selected';

  // SendComplainScreen(this.id, this.name, this.dept);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final name = routeArgs['name'];
    final id = routeArgs['id'];
    final dept = routeArgs['department'];
    final imageUrl = routeArgs['imageUrl'];

    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const Text('Let\'s send that complaint'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(29.0),
        child: Container(
          child: Row(
            children: [
              Container(
                height: 200,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text('$name'),
                  Text('$dept'),
                  Text('$id'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
