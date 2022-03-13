import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../Make_complaint_item.dart';

const title = 'Who to complain against';

String search;

class MakeComplaintScreen extends StatelessWidget {
  final searchType;
  MakeComplaintScreen(this.searchType);
  static const routeName = '/make-comaplaint-screen';

  @override
  Widget build(BuildContext context) {
    //final routeArgs =
    // ModalRoute.of(context).settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: searchScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
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
              height: 650,
              child: GridView.count(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                crossAxisSpacing: 2,

                padding: const EdgeInsets.all(10),
                children: DUMMY_SEARCH
                    .map(
                      (catData) => MakeComplaintItem(
                        color: catData.color,
                        name: catData.name,
                        dept: catData.departmant,
                        id: catData.id,
                        imageUrl: catData.imageUrl,
                        occupation: catData.occupation,
                        canReview: catData.canReview,
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
      ),
    );
  }

  AppBar searchScreen() {
    return AppBar(
      elevation: 15,
      title: const Text('Looking for who to complain'),
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
