
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_2p/src/pages/Buttons.dart';

/*class PrincipalPage extends StatefulWidget {
  //static String id = 'login_page';

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}*/
class Nombre extends StatelessWidget{
final myController = TextEditingController();
  final myController1 = TextEditingController();

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
          controller: myController,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            
            icon: Icon(Icons.grade_rounded),
            hintText: '............',
            labelText: 'Nombre Completo',
           
          ),
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
          controller: myController1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            icon: Icon(Icons.refresh_rounded),
            labelText: 'Resultado',
            
          ),
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
              'Ordenar ',
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
             myController1.text=sortAlphabet(myController.text);
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
          color: Colors.pink,
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

String sortAlphabet (String texto) {

  final List<String> nombre= [];
    String resultado ='';
texto=texto.toLowerCase();
for(int i=0; i<texto.length; i++) {
  var char = texto[i];
  nombre.add(char);
}
  nombre.sort();
  for(int i=0; i<nombre.length; i++) {
  resultado += nombre[i];
}
resultado.trim();
  return resultado;
 }