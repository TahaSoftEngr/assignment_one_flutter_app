import 'package:flutter/material.dart';

navigateClearStack(BuildContext context,Widget route){
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => route),
      ModalRoute.withName("/ROOT")
  );
}