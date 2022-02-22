import 'package:flutter/material.dart';
import './screens/send_complain_screen.dart';

class MakeComplaintItem extends StatelessWidget {
  final String name;
  final String dept;
  final String id;
  //final String lodger;
  final Color color;

  MakeComplaintItem({
    this.color,
    @required this.name,
    @required this.dept,
    this.id,
  });

  // void selectComplain(BuildContext ctx) {
  //   Navigator.of(ctx).push(
  //       MaterialPageRoute(builder: (_) => SendComplainScreen(id, name, dept)));
  // }

  void selectComplain(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/after-complainagainst-selected', arguments: {
      //'id': id,
      'department': dept,
      'name': name,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectComplain(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(name, style: Theme.of(context).textTheme.bodyText2),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
