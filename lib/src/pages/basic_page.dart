import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  //const BasicPage({Key key}) : super(key: key);

  final styleTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );

  final styleSubTitle = TextStyle(
    fontSize: 18.0,
    color: Colors.grey
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(        
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      )
    );
  }

  Widget _createImage(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067__340.png'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Night', style: styleTitle,),
                  SizedBox(height: 7.0,),
                  Text('Lorem ipsum es el texto..', style: styleSubTitle,),

                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41',style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _createActions(){
    return Row(      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, 'CALL'),
        _createAction(Icons.near_me, 'ROUTE'),
        _createAction(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue),),
      ],
    );
  }

  Widget _createText(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Commodo anim excepteur ipsum tempor excepteur enim duis labore sint officia. Elit non velit sit exercitation proident non incididunt ullamco ipsum nulla culpa. Commodo id do nulla et mollit. Aliqua nostrud minim ullamco sunt et ullamco elit ex consectetur eiusmod aute enim consectetur proident.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}