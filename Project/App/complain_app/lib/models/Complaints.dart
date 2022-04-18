import 'dart:html';

//import 'package:flutter/foundation.dart';

enum Status {
  Processing,
  Finished,
}

class Complaints {
  final String lodgerID;
  final String reviewID;
  final String accussedID;
  final String complaintID;
  final bool isBehalf;
  final AudioElement speech;
  final File evidence;
  final Status status;

  const Complaints({
    required this.lodgerID,
    required this.reviewID,
    required this.accussedID,
    required this.complaintID,
    required this.evidence,
    required this.isBehalf,
    required this.speech,
    required this.status,
  });
}
