import 'package:assignment_one_flutter_app/Commons.dart';
import 'package:assignment_one_flutter_app/lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var display = MediaQuery.of(context).size;
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(),
                      width: 200,
                      height: 180,
                      child:Image.asset("assets/logo.png",width:display.width-150,height: 200,fit:BoxFit.contain),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Dashboard',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> Lists()) );
                    },
                    title: Text(
                      'Assignments',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Programs',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'LogOut',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.green,
            child: Row(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left:5.0,),
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '+92312-893588',style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}