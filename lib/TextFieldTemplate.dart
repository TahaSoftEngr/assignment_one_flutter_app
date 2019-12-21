import 'package:flutter/material.dart';

class TextFieldTemplate extends StatelessWidget {
  @override

    String label;

  TextFieldTemplate(String a) {
    this.label = a;
    }

    @override
    Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1,horizontal: 2),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(25.5))

      ),
      child: Row(
        children: <Widget>[
          Text("$label :"),
          Expanded(
            child:TextField(
              decoration: InputDecoration(
                  border: InputBorder.none
              ),
            ),
          )
        ],
//    width: 300,
//    height: 45,
//    child: Material(
//    child: TextField(
//    decoration: InputDecoration(
//    border: OutlineInputBorder(
//    borderSide: BorderSide(color: Colors.black),
//    borderRadius: BorderRadius.all(Radius.circular(10.0)),
//    ),
//    hintText: label),
//    style: TextStyle(fontSize: 13, color: Colors.black),
//    ),
//    ),
      ),
    );
    }
    }
