import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final myTextStyle = TextStyle(fontSize: 25.0);
  @override
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
            Text('Numero de clicks', style: myTextStyle),
            Text('0', style: myTextStyle),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('u r pressed');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }

}