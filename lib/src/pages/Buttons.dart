import 'package:flutter/material.dart';
import 'package:flutter_2p/src/pages/PrincipalPage.dart';
import 'package:flutter_2p/src/pages/Ecuacion.dart';
import 'package:flutter_2p/src/pages/Numeros.dart';
import 'package:flutter_2p/src/pages/Nombre.dart';


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(     
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              _bottonTextField(),
              SizedBox(
                height: 20.0,
              ),
              _bottonTextField2(),
              SizedBox(
                height: 20.0,
              ),
              _bottonTextField3(),
            ],
          ),
      ),
       
      // Thi
    );
  }

Widget _bottonTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
            child: Text(
              'A',
              style: TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          shape: CircleBorder(),
          elevation: 20.0,
          color: Colors.red,
          onPressed: () {
            Navigator.push(
                       context, 
                        MaterialPageRoute(builder: (context) => Ecuacion()),
                     );
           },
          );
    });
  }




  Widget _bottonTextField2() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 105.0, vertical: 15.0),
            child: Text(
              'B',
              style: TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          shape: CircleBorder(),
          elevation: 20.0,
          color: Colors.blue,
          onPressed: () {
            Navigator.push(
                       context, 
                        MaterialPageRoute(builder: (context) => Numeros()),
                     );
            },
          );
    });
  }



  Widget _bottonTextField3() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 15.0),
            child: Text(
              'C',
              style: TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          shape: CircleBorder(),
          elevation: 20.0,
          color: Colors.green,
          onPressed: () {
           Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => Nombre()),
            );},
          );
    });
  }





}