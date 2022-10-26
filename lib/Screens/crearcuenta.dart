import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/comidas.dart';
import 'package:flutter_application_1/Screens/inicio_login.dart';


class CrearCuenta extends StatelessWidget {
  
 
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
             image: AssetImage('assets/CrearCuenta.png'),
             fit:BoxFit.cover),
              ),
              child:  Center(
                child:Column(
              
                  children: [
                   
                        SizedBox(height: 363.0,),
                        nombreuser(),
                         SizedBox(height: 2.0,),
                        gmail(),
                        SizedBox(height: 2.0,),
                        contrase(),
                       SizedBox(height: 20.0,),
                          botonini(),
                      SizedBox(height: 90.0,),
                        Visibility( visible:isVisible,child:  botoncrear()),
                         

                  ],
                
                
                )),
    );
}


Widget nombreuser(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 44.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Ingrese Nombre",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget gmail(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 44.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "gmail",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget contrase(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Ingrese Contraseña",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget botoncrear(){
 return ElevatedButton(

           onPressed: () {
      
              },
             style: TextButton.styleFrom(
             primary: Colors.black,
              backgroundColor:Colors.blue[500]),
            child: Text(
                 "Iniciar sesión",
                  style: TextStyle(
                   fontWeight: FontWeight.normal,
                  fontSize: 10,
                  fontStyle: FontStyle.italic,
                     color: Colors.white),     
                 
                )
  );
  

  
}

  Widget botonini() {

return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=>inicio_login()),
            );
          },
          
             style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 46.0,vertical: 15),
              primary: Colors.black,
              backgroundColor:Colors.blue[600]),
              child: Text(
               "Guardar",
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