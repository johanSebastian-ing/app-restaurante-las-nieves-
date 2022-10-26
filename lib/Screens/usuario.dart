import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/comidas.dart';
import 'package:flutter_application_1/Screens/crearcuenta.dart';
import 'package:flutter_application_1/Screens/inicio_login.dart';
import 'package:flutter_application_1/Screens/inicio_prew.dart';
import 'package:flutter_application_1/Screens/menu.dart';
import 'package:flutter_application_1/Screens/reserva.dart';
import 'package:flutter_application_1/Screens/reservamesa.dart';


class usuario extends StatelessWidget {
  
 
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
             image: AssetImage('assets/usuarioq.png'),
             fit:BoxFit.cover),
              ),
              child:  Center(
                child:Column(
              
                  children: [
                   
                        SizedBox(height: 216.0,),
                    campousuario(),
                    SizedBox(height: 2.0,),
                   contrase(),
                   SizedBox(height: 6.0,),
                   correo(),
                          
                      SizedBox(height: 270.0,),
                         botoncrear(),
                            SizedBox(height: 2.0,),
                         salir(),
                         

                  ],
                
                
                )),
    );
}


Widget campousuario(){
return Container(
  padding: EdgeInsets.symmetric(horizontal:  60.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "johan sebastian ",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget contrase(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 60.0,vertical: 3.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "********",fillColor: Colors.white,filled: true),

    ),
  );

}

Widget correo(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 60.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "jquilindo@unimayor.edu.co",fillColor: Colors.white,filled: true),

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
               padding: EdgeInsets.symmetric(horizontal: 100.0,vertical: 25),
              primary: Colors.black,
              backgroundColor:Colors.green),
              child: Text(
               "Actualizar Perfil",
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

Widget salir(){
 
return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=>menuprew()),
            );
          },
          
             style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
              primary: Colors.black,
              backgroundColor:Colors.orange),
              child: Text(
               "salir",
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
               padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 4.0),
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