import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../Make_complaint_item.dart';

final items = ['Beer', 'Meraaj'];
const title = 'Who to complain against';

class MakeComplaintScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const Text('Looking for who to complain'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_SEARCH
            .map(
              (catData) => MakeComplaintItem(
                color: catData.color,
                name: catData.name,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
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
