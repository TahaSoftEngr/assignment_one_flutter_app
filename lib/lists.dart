import 'package:assignment_one_flutter_app/AssignmentList.dart';
import 'package:flutter/material.dart';

class Lists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: <Widget>[
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),
          AssignmentList("task Management System","flutter Course","pending"),

        ],
      ),
    );
  }
}