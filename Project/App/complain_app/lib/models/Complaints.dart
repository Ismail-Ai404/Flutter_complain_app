// To parse this JSON data, do
//
//     final complaints = complaintsFromJson(jsonString);

import 'dart:convert';

Complaints complaintsFromJson(String str) =>
    Complaints.fromJson(json.decode(str));

String complaintsToJson(Complaints data) => json.encode(data.toJson());

class Complaints {
  Complaints({
    required this.lodgerId,
    required this.reviewId,
    required this.accussedId,
    required this.complainId,
    required this.speech,
    required this.evidence,
    required this.status,
    required this.isBehalf,
  });

  String lodgerId;
  String reviewId;
  String accussedId;
  String complainId;
  String speech;
  String evidence;
  List<String> status;
  bool isBehalf;

  factory Complaints.fromJson(Map<String, dynamic> json) => Complaints(
        lodgerId: json["lodgerId"],
        reviewId: json["reviewId"],
        accussedId: json["accussedId"],
        complainId: json["complainId"],
        speech: json["speech"],
        evidence: json["evidence"],
        status: List<String>.from(json["status"].map((x) => x)),
        isBehalf: json["isBehalf"],
      );

  Map<String, dynamic> toJson() => {
        "lodgerId": lodgerId,
        "reviewId": reviewId,
        "accussedId": accussedId,
        "complainId": complainId,
        "speech": speech,
        "evidence": evidence,
        "status": List<dynamic>.from(status.map((x) => x)),
        "isBehalf": isBehalf,
      };
}
