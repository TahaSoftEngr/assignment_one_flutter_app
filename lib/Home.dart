import 'dart:async';

import 'package:assignment_one_flutter_app/Commons.dart';
import 'package:flutter/material.dart';
import 'package:assignment_one_flutter_app/SignIn.dart' ;
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   var display = MediaQuery.of(context).size;
   Timer t = Timer(Duration(milliseconds: 5000),(){
     navigateClearStack(context,SignIn());
   });
    return Scaffold(
     body:Stack(
       children: <Widget>[
         Center (
           child:Image.asset("assets/logo.png",width:display.width-150,height: 200,fit:BoxFit.contain),
         ),
         Positioned(
           bottom: 150,
           child: SizedBox(
             width: display.width,
               child: Center(
               child: CircularProgressIndicator(),
             )
           ),
         ),
       ],
     ),
   );
  }
}