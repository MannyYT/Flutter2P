
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_2p/src/pages/Buttons.dart';

/*class PrincipalPage extends StatefulWidget {
  //static String id = 'login_page';

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}*/
class Numeros extends StatelessWidget{
 int x = 0;
  int y = 0;
  int inter = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Examen Segundo Parcial'),
        ),
        body: Center(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _userTextField(),
              SizedBox(
                height: 15,
              ),
              _ageTextField(),
              SizedBox(
                height: 20.0,
              ),
              _bottonTextField(),
              SizedBox(
                height: 20.0,
              ),
              _botton1TextField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            
            icon: Icon(Icons.functions_sharp),
            hintText: '............',
            labelText: 'Numero 1',
           
          ),
           onChanged: (value) {
                      x = int.parse(value);
                    },
        ),
      );
    });
  }

  Widget _ageTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            icon: Icon(Icons.functions_rounded),
            hintText: 'Escribe tu Edad',
            labelText: 'Numero 2',
            
          ),
          onChanged: (value) {
                      y = int.parse(value);
                    },
        ),
      );
    });
  }


  Widget _bottonTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Random ',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.red,
          onPressed: () {
           Random random = new Random();
                      int randomNumber = random.nextInt(y) + x;
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("El Resultado es "),
                                content: Text('$randomNumber'),
                                actions: <Widget>[
                  TextButton(
                    child: Text('Listo'),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
                              )
                              );
            },
          );
    });
  }


  Widget _botton1TextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Inicio ',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.blue,
          onPressed: () {
           Navigator.push(
                       context, 
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                     );
            },
            
          );
    });
  }
}



