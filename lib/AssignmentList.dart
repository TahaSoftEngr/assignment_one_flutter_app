import 'package:flutter/material.dart';

class AssignmentList extends StatelessWidget{
  String top;
  String Bottom;
  String ButtonTitle;
  AssignmentList(String top, String Bottom , String Btntitle){
    this.top = top;
    this.Bottom= Bottom;
    this.ButtonTitle = Btntitle;
  }
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0,horizontal:20.0),
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: [
            BoxShadow(),
          ]
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.content_paste,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(top,style: TextStyle(fontSize: 12),),
                  Text(Bottom,style: TextStyle(fontSize: 12,color: Colors.green)),
                ],
              ),
            ),
          ),
          Container(
            width: 95,
            padding: EdgeInsets.all(5.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Text(ButtonTitle,style: TextStyle(color: Colors.white),),
              color: Color(0xFF1DBC60),
            ),
          )
        ],
      ),
    );

  }
}