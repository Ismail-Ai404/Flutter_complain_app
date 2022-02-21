import 'package:flutter/material.dart';
import './screens/send_complain_screen.dart';

class MakeComplaintItem extends StatelessWidget {
  final String name;
  //final String dept;
  //final String lodger;
  final Color color;

  MakeComplaintItem({
    @required this.color,
    @required this.name,
  });

  void selectComplain(BuildContext ctx) {
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (_) => SendComplainScreen()));
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
