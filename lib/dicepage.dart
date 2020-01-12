import 'package:flutter/material.dart';
import 'dart:math';
class DicePage extends StatefulWidget {
  
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicepressed = 1;
  int rightdicepressed = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        
      children: <Widget>[
    
        Expanded( 
          
          //as pixel over is happening
          //flex: 2, property to resize  the ratio of one dice two another size but explands properly
          
child:Padding( //left dice
  padding: EdgeInsets.all(16),
  child: FlatButton(
    child: Image.asset("images/dice$leftdicepressed.png"),
    onPressed: (){
      setState(() {
        
leftdicepressed=Random().nextInt(6)+1; //genrates radndom no upto 0-5 max
      });
      
    },
  ) 
        ),

),
        Expanded( //right dice 
         // flex: 1,
         child: Padding(
           padding: EdgeInsets.all(16),
           child: FlatButton(
             child: Image.asset('images/dice$rightdicepressed.png'),
             onPressed: (){
               setState(() {
               rightdicepressed =Random().nextInt(6)+1;  
               });
            

             },
           ),
         ),
         
         
        ),
    

      ],
    ),
    );

      
      
    
  }
}
