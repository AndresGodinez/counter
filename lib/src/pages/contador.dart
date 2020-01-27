import 'package:flutter/material.dart';

class Contador extends StatefulWidget{
  @override
  createState() => _ContadorState();
}

class _ContadorState extends State<Contador>{
  @override
  final _myTextStyle = TextStyle(fontSize: 25.0);
  int _contador = 0;



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de clicks', style: _myTextStyle),
              Text('$_contador', style: _myTextStyle),
            ],
          )
      ),
      floatingActionButton: _makeButtons()

    );
  }

  Widget _makeButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.autorenew)),
        Expanded(child: SizedBox(width: 30.0,)),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.keyboard_arrow_down)),
        SizedBox(width: 30.0,),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.keyboard_arrow_up)),
      ],
    );
  }

  void _agregar() {
    setState(() => _contador++);
  }

  void _sustraer() {
    setState(() => _contador--);
  }

  void _reset() {
    setState(() => _contador = 0);
  }
}