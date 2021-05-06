import 'package:flutter/material.dart';
import 'package:flutter_2p/src/pages/Buttons.dart';

/*class PrincipalPage extends StatefulWidget {
  //static String id = 'login_page';

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}*/
class PrincipalPage extends StatelessWidget{
 final myController = TextEditingController();
  final myController1 = TextEditingController();
   final myController2 = TextEditingController();


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
               _stateTextField(),
              SizedBox(
                height: 20.0,
              ),
              _bottonTextField(),
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
            icon: Icon(Icons.person_outline),
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
            icon: Icon(Icons.assignment_late_outlined),
            hintText: 'Escribe tu Edad',
            labelText: 'Edad',
          ),
        ),
      );
    });
  }

   Widget _stateTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          controller: myController2,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            icon: Icon(Icons.home),
            hintText: 'Estado donde Vives',
            labelText: 'Estado',
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
              'Iniciar ',
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
          color: Colors.brown,
          onPressed: () {
            showDialog(context: context, 
            builder: (context)
            {
              return AlertDialog(
                content: Text('Bienvenido ' +' '+ myController.text + ', '+ 'Tienes '+ ' ' + myController1.text + ' '+ 'Anios, ' + 'Y Eres del Estado de '+ ' ' + myController2.text),


                actions: <Widget>[
                  TextButton(
                    child: Text('Listo'),
                    onPressed: (){
                      Navigator.push(
                       context, 
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                     );
                    },
                  )
                ],
              );
            },
            );
            },
          );
    });
  }
}
