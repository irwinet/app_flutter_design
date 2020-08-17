import 'dart:io';

import 'package:app_flutter_design/src/pages/basic_page.dart';
import 'package:app_flutter_design/src/pages/button_page.dart';
import 'package:app_flutter_design/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: (Platform.isAndroid) ? Colors.transparent : Colors.white      
    ));*/

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light
      )
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design',
      initialRoute: 'button',
      routes: {
        'basic' : (BuildContext context) => BasicPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'button' : (BuildContext context) => ButtonPage(),
      },
    );
  }
}