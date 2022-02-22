import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../Make_complaint_item.dart';

final items = ['Beer', 'Meraaj'];
const title = 'Who to complain against';

String search;

class MakeComplaintScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final routeArgs =
    // ModalRoute.of(context).settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const Text('Looking for who to complain'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onSubmitted: (val) {
                search = val;
              },
              cursorColor: Color.fromARGB(255, 31, 3, 12),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '',
                icon: Icon(
                  Icons.person_search,
                  color: Color.fromARGB(255, 82, 0, 27),
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,

              padding: const EdgeInsets.all(25),
              children: DUMMY_SEARCH
                  .map(
                    (catData) => MakeComplaintItem(
                      color: catData.color,
                      name: catData.name,
                      dept: 'ECE',
                    ),
                  )
                  .toList(),

              // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //   maxCrossAxisExtent: 200,
              //   childAspectRatio: 3 / 2,
              //   crossAxisSpacing: 20,
              //   mainAxisSpacing: 20,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}



















//!List view
//     MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(title),
//         ),
//         body: ListView.builder(
          
//           itemCount: items.length,
//           itemBuilder: (context, index) {
            
//             return ListTile(
              
//               title: Text('Name: ${items[index]}'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
