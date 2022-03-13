import 'package:flutter/material.dart';

class SendComplain extends StatefulWidget {
  final nameOfBehalf;
  final nameOfCurrentUser;
  final nameOfComplaintAgainst;
  final nameOfReviwer;

  final idOfBehalf;
  final idOfCurrentUser;
  final idOfComplaintAgainst;
  final idOfReviwer;

  SendComplain({
    this.nameOfBehalf,
    this.nameOfCurrentUser,
    this.nameOfComplaintAgainst,
    this.nameOfReviwer,
    this.idOfBehalf,
    this.idOfComplaintAgainst,
    this.idOfCurrentUser,
    this.idOfReviwer,
  });

  @override
  State<SendComplain> createState() => _SendComplainState();
}

class _SendComplainState extends State<SendComplain> {
  var _isBehalf = false;
  @override
  void setState(VoidCallback fn) {
    if (widget.nameOfBehalf != null) _isBehalf = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Complain'),
      ),
      body: _isBehalf
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: infoWidget(widget.nameOfBehalf, widget.idOfBehalf),
            )
          : Column(
              children: [
                infoWidget(widget.nameOfCurrentUser, widget.idOfCurrentUser),
                infoWidget(
                    widget.nameOfComplaintAgainst, widget.idOfComplaintAgainst),
                infoWidget(widget.nameOfReviwer, widget.idOfReviwer),
              ],
            ),
    );
  }

  Widget infoWidget(String name, String id) {
    return Container(
      child: Text('Name:$name ID:$id'),
    );
  }
}
