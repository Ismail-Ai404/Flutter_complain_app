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

  const Search({
    this.id,
    this.initial,
    this.departmant,
    this.name,
    this.color,
    this.occupation,
    this.imageUrl,
  });
}
