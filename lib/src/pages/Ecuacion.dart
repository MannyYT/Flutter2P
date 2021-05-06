import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_2p/src/pages/Buttons.dart';

class Ecuacion extends StatefulWidget {
  @override
  _Ecuacion createState() => _Ecuacion();
}

class _Ecuacion extends State<Ecuacion> {
  double a = 0,
      b = 0,
      c = 0,
      discr = 0,
      root1 = 0,
      root2 = 0,
      res = 0,
      real = 0,
      imag = 0;
  final formKey = GlobalKey<FormState>();
  TextEditingController t1 = TextEditingController(text: '');
  TextEditingController t2 = TextEditingController(text: '');
  TextEditingController t3 = TextEditingController(text: '');

  doGeneralQuadraticFormula() {
    setState(() {
      a = double.parse(t1.text);
      b = double.parse(t2.text);
      c = double.parse(t3.text);
      discr = b * b - 4 * a * c;
      real = -b / (2 * a);
      imag = sqrt(-discr) / (2 * a);

      if (discr > 0) {
        root1 = ((-1 * b) + sqrt(discr)) / (2 * a);
        root2 = ((-1 * b) - sqrt(discr)) / (2 * a);
      } else {
        root1 = real;
        root2 = imag;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ecuación cuadrática'),
        ),
        body: Center(
          child: Card(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'El resultado es',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '$root1 y $root2',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Yass.ttf',
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const ListTile(
                  title: Text('Ecuacion Cuadratica'),
                  subtitle: Text(
                    'Una ecuación cuadrática o de segundo grado es toda ecuación en la cual, una vez simplificada, el mayor exponente de la incógnita es 2. Así, ax2 + bx + c = 0 es una ecuación de segundo grado. En esta ecuación La “x” es la variable o incógnita y las letras a, b y c son los coeficientes, los cuales pueden tener cualquier valor, excepto que a = 0.',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                _aTextField(),
                SizedBox(
                  height: 15,
                ),
                _bTextField(),
                SizedBox(
                  height: 20.0,
                ),
                _cTextField(),
                SizedBox(
                  height: 20.0,
                ),
                 _formulaTextField(),
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
      ),
    );
  }

  Widget _aTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          controller: t1,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            icon: Icon(Icons.format_list_numbered_rounded),
            labelText: 'A',
          ),
        ),
      );
    });
  }

  Widget _bTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          controller: t2,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            icon: Icon(Icons.format_list_numbered_outlined),
            labelText: 'B',
          ),
        ),
      );
    });
  }

  Widget _cTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          controller: t3,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            icon: Icon(Icons.format_list_numbered_outlined),
            labelText: 'C',
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
            'Calcular ',
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
        color: Colors.tealAccent,
        onPressed: () {
          doGeneralQuadraticFormula();
                   //   print('$root1 and $root2');
        },
      );
    });
  }

  Widget _formulaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Column(
                mainAxisAlignment: MainAxisAlignment.end ,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Formula Cuadratica',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  Text('ax² + bx + c = 0',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.red),
                      textAlign: TextAlign.center),
                ],
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
        color: Colors.amber,
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


