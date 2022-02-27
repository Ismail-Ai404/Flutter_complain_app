import 'package:flutter/material.dart';

import './models/Search.dart';
import './screens/send_complain_screen.dart';

class MakeComplaintItem extends StatelessWidget {
  final String name;
  final String dept;
  final String id;
  //final String lodger;
  final String imageUrl;
  final Color color;
  final Occupation occupation;

  MakeComplaintItem(
      {this.color,
      @required this.name,
      @required this.dept,
      @required this.id,
      @required this.imageUrl,
      @required this.occupation});

  String get occupationText {
    switch (occupation) {
      case Occupation.AdminStaff:
        return 'Admin Staff';
      case Occupation.Faculty:
        return 'Faculty';

        break;
      case Occupation.Student:
        return 'Student';

        break;
      case Occupation.Instrutor:
        return 'Instuctor';

        break;
      case Occupation.Staff:
        return 'Staff';

        break;

      case Occupation.SystemAdmin:
        return 'System Admin';

        break;

      default:
        return 'Unknown';
    }
  }

  // void selectComplain(BuildContext ctx) {
  //   Navigator.of(ctx).push(
  //       MaterialPageRoute(builder: (_) => SendComplainScreen(id, name, dept)));
  // }

  void selectComplain(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SendComplainScreen.routeName, arguments: {
      'id': id,
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
        height: 300,
        padding: const EdgeInsets.all(5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 40,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.person),
                        SizedBox(
                          width: 6,
                        ),
                        Text(name),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.work,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(occupationText),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.assignment_ind_rounded,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$id'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.auto_stories_outlined,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(dept),
                      ],
                    ),
                  ],
                ),
              ),
              //Text(name, style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
        ),
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
