import 'package:flutter/material.dart';

import './models/Search.dart';
import './screens/send_complain_screen.dart';

class MakeComplaintItem extends StatefulWidget {
  final String name;
  final String dept;
  final String id;
  //final String lodger;
  final String imageUrl;
  final Color color;
  final Occupation occupation;
  final bool canReview;

  // final String name2;
  // final String dept2;
  // final String id2;
  // //final String lodger;
  // final String imageUrl2;
  // final Color color2;
  // final Occupation occupation2;

  const MakeComplaintItem({
    @required this.color,
    @required this.name,
    @required this.dept,
    @required this.id,
    @required this.imageUrl,
    @required this.occupation,
    @required this.canReview,
  });

  @override
  State<MakeComplaintItem> createState() => _MakeComplaintItemState();
}

class _MakeComplaintItemState extends State<MakeComplaintItem> {
  String get occupationText {
    switch (widget.occupation) {
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

  bool isReview = false;
  void toReviewSearch() {
    isReview = true;
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  // void selectComplain(BuildContext ctx) {
  void selectComplain(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      SendComplainScreen.routeName,
      arguments: {
        'id': widget.id,
        'department': widget.dept,
        'name': widget.name,
        'imageUrl': widget.imageUrl,
      },
    );
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
          margin: const EdgeInsets.all(10),
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
                      widget.imageUrl,
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
                        Text(widget.name),
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
                        Text('${widget.id}'),
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
                        Text(widget.dept),
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
              widget.color.withOpacity(0.7),
              widget.color,
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
