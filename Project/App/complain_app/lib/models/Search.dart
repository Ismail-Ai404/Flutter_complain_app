//import 'package:flutter/material.dart';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Occupation {
  Student,
  Instrutor,
  Staff,
  Faculty,
  AdminStaff,
  SystemAdmin,
}

class Search {
  final String id;
  final String initial;
  final String departmant;
  final String name;
  final Color color;
  final Occupation occupation;
  final String imageUrl;
  final bool canReview;

  const Search({
    @required this.id,
    @required this.initial,
    @required this.departmant,
    @required this.name,
    @required this.color,
    @required this.occupation,
    @required this.imageUrl,
    @required this.canReview,
  });
}
