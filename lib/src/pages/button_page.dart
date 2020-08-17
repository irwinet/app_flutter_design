import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child : Stack(
          children: <Widget>[
            _backgroundApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _title(),
                  _buttonsRound(),
                ],
              ),
            )
          ],
        )
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _backgroundApp(){
    final gradient = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final boxRosa = Transform.rotate(
      angle: -pi/5.0,
      child: Container(
        height: 310.0,
        width: 310.0,
        decoration: BoxDecoration(
          //color: Colors.pink,
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );          

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          child : boxRosa,
          top: -100,
        )        
      ],
    );
  }

  Widget _title(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into particular category', style: TextStyle(color: Colors.white, fontSize: 18.0),)
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(
            color: Color.fromRGBO(116, 117, 152, 1.0)
          )
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          )
        ],
      ),
    );
  }

  /*
  BottomNavigationBar(
    fixedColor: Colors.pink,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today),
        title: Container()
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.pie_chart_outlined),
        title: Container()
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.supervised_user_circle),
        title: Container()
      )
    ],
  )
  */

  Widget _buttonsRound(){
    return Table(
      children: [
        TableRow(
          children: [
            _createButonRound(Colors.blue, Icons.border_all, 'General'),
            _createButonRound(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ]
        ),
        TableRow(
          children: [
            _createButonRound(Colors.pinkAccent, Icons.shop, 'Buy'),
            _createButonRound(Colors.orange, Icons.insert_drive_file, 'File'),
          ]
        ),
        TableRow(
          children: [
            _createButonRound(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
            _createButonRound(Colors.green, Icons.cloud, 'Grocery'),
          ]
        ),
        TableRow(
          children: [
            _createButonRound(Colors.red, Icons.collections, 'Photos'),
            _createButonRound(Colors.teal, Icons.help_outline, 'General'),
          ]
        )
      ],
    );
  }

  Widget _createButonRound(Color color, IconData icon, String text){
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0
        ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color : Colors.white, size: 30.0,),
              ),
              Text(text, style: TextStyle(color: color),),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
    );
  }

}