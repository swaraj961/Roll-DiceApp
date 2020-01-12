import 'package:flutter/material.dart';
import 'package:diceapp/dicepage.dart';
void main () => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo.shade600, //theme of appbar
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink.shade600,
        appBar: AppBar(
        
          title: Text("Roll Dice App ",style: TextStyle(color: Colors.white
          ,fontWeight: FontWeight.w800,fontSize: 20),),
          
          centerTitle: true,
        ),
body: DicePage(),
      ),
    );
      
    
  }
}
