import 'package:assignment_one_flutter_app/TextFieldTemplate.dart';
import 'package:flutter/material.dart';
import 'package:assignment_one_flutter_app/dashBoard.dart' ;

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    var display = MediaQuery.of(context).size;
//    return Scaffold(
//      body:Stack (
//       children: <Widget>[
//         Positioned(
//             right: 70,
//             top: 50,
//             child:Image.asset("assets/logo.png",width:display.width-150,height: 200,fit:BoxFit.contain),
//         ),
//
//       ],
//
//      ),
//
//    );
    var display = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Container(
                padding:new EdgeInsets.symmetric(vertical: 1.1),
                width: 200,
                child:Image.asset("assets/logo.png",width:display.width-150,height: 200,fit:BoxFit.contain),
              ),
            ),
            Center(
              child: Container(
                margin:new EdgeInsets.symmetric(vertical: 50.1),
                width: 300,
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextFieldTemplate("UserName"),
                    TextFieldTemplate("Password"),
                    Container(
                      width: 180,
                      height: 40,
                      child: RaisedButton(
                          onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> dashBoard()) );
                          },
                          color: Color(0xFF1DBC60),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(50.0)))),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Text('Powered by Pakstudents'),
            )
          ],
        ),
      ),
    );
  }
  }