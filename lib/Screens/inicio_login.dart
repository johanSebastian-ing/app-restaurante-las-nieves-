import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/comidas.dart';
import 'package:flutter_application_1/Screens/crearcuenta.dart';
import 'package:flutter_application_1/Screens/menu.dart';
import 'package:flutter_application_1/Screens/reserva.dart';
import 'package:flutter_application_1/Screens/reservamesa.dart';


class inicio_login extends StatelessWidget {
  
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mi app',
      home:Scaffold(
           resizeToAvoidBottomInset:false,
        body: home(),

      ),
      
     
    
    );
  }
}

Widget home(){
          bool isVisible=false;
    return Container(
       decoration: BoxDecoration(
         
           image: DecorationImage(
             image: AssetImage('assets/logocasa.png'),
             fit:BoxFit.cover),
              ),
              child:  Center(
                child:Column(
              
                  children: [
                   
                        SizedBox(height: 430.0,),
                    campousuario(),
                    SizedBox(height: 2.0,),
                   contrase(),
                       SizedBox(height: 35.0,),
                          botonini(),
                      SizedBox(height: 86.0,),
                         botoncrear(),
                         

                  ],
                
                
                )),
    );
}


Widget campousuario(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 44.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "usuario",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget contrase(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 45.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "password",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget botoncrear(){
 
return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=>CrearCuenta()),
            );
          },
          
             style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 20),
              primary: Colors.black,
              backgroundColor:Colors.blue[600]),
              child: Text(
               "Crear Cuenta",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                 color: Colors.white),
     
     ),
  
    );


  
 }
);
  
}
  Widget botonini() {

return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=> reservaw
              ()),
            );
          },
          
             style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 70.0,vertical: 15),
              primary: Colors.black,
              backgroundColor:Colors.blue[600]),
              child: Text(
               "Iniciar sesión",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 10,
                fontStyle: FontStyle.italic,
                 color: Colors.white),
     
     ),
  
    );


  
 }
);
  
}