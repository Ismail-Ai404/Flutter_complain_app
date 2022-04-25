import 'package:flutter/material.dart';

class SendComplainScreen extends StatelessWidget {
  // final String id;
  // final String name;
  // final String dept;
  static const routeName = '/after-complainagainst-selected';
  static const routeComplainToSpeech = '/after-complain-to-speech';

  // SendComplainScreen(this.id, this.name, this.dept);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final name = routeArgs['name'];
    final id = routeArgs['id'];
    final dept = routeArgs['department'];
    //final imageUrl = routeArgs['imageUrl'];

    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const Text('Let\'s send that complaint'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(29.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                //margin: EdgeInsetsGeometry.infinity,
                //decoration: BoxDecoration(color: Colors.white60),
                child: Text(
                  'Complaint Against',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.amber[600],
                  ),
                ),
              ),
              Text('$name'),
              Text('$dept'),
              Text('$id'),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 15,
                //expands: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    hintText: 'Please write about the incident'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed(routeComplainToSpeech),
                    child: Text("Speech Record")),
                SizedBox(
                  width: 90,
                ),
                ElevatedButton(
                    onPressed: (() {}),
                    //Navigator.of(context).pushNamed(routeComplainToSpeech),
                    child: Text("Upload PDF")),
              ]),
            ],
            // child: Row(
            //   children: [
            //     Container(
            //       height: 200,
            //       width: 50,
            //       // child: ClipRRect(
            //       //   borderRadius: BorderRadius.only(
            //       //     topLeft: Radius.circular(15),
            //       //     topRight: Radius.circular(15),
            //       //   ),
            //       //   child: Image.network(
            //       //     imageUrl,
            //       //     height: 200,
            //       //     width: 50,
            //       //     fit: BoxFit.cover,
            //       //   ),
            //       // ),
            //     ),
          ),
        ),
      ),
    );
  }
}
