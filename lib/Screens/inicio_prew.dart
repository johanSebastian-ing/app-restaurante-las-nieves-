import 'dart:async';
import 'package:flutter/material.dart';


import 'package:flutter_application_1/Screens/inicio_login.dart';

class inicioprew extends  StatefulWidget{
  @override 
  inicioprewState createState()=>  inicioprewState();

 
}
class inicioprewState extends State<inicioprew >{
 @override 
 void initState(){
   super.initState();
   Timer(
     Duration(seconds: 5),
     ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>inicio_login())));
   
 }


  @override
Widget build(BuildContext context){
    return Container(
       decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/inicio.png'),
             fit:BoxFit.cover),
              ),
              
    );
}


  }