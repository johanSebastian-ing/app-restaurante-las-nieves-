import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Screens/ensayocarrito.dart';


import 'package:flutter_application_1/Screens/inicio_login.dart';
import 'package:flutter_application_1/Screens/menu.dart';
import 'package:flutter_application_1/Screens/usuario.dart';

import 'comidas.dart';
import 'crearcuenta.dart';
import 'reservamesa.dart';

class reservaw extends  StatefulWidget{
  @override 
  reserState createState()=> reserState();

 
}
class  reserState extends State<reservaw >{
  int pagina=0;
List<Widget>_paginas=[
menuprew(),
reserprew(),
carro(),
usuario(),





];
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mi app',
      home: Scaffold(
        
    
        body: _paginas[pagina],
        bottomNavigationBar: BottomNavigationBar( 
         
          onTap: (index){

            setState(() {
              pagina=index;
              
            });
          },
           currentIndex: pagina,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items : [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.storefront),label: "mesa"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_sharp),label: "Tienda"),
           BottomNavigationBarItem(icon: Icon(Icons.account_box ),label: "usuario"),
        ],
        ),
        ),
      );
      
    
    
  }

}
Widget homer(){
       return Scaffold(
backgroundColor: Colors.white,
body:ListView(
  children: <Widget>[
superior(),
 SizedBox(height: 10.0,),
botones(),
SizedBox(height: 10.0,),
reserba(),
SizedBox(height: 10.0,),
 

  
  ],
)


       );
}
Widget superior(){

  return Column(
     children: <Widget>[
      Stack(
    children: <Widget>[

      Image.asset('assets/Rnieves.png',
       width: 500,
       
            
       fit:BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 300,
        
        ),SafeArea(child: titulo())
     
   
    ],
      ),
            
  ],
  );
}
 
Widget titulo(){
return Row(
 
  children:  <Widget>[
     Text('Restaurante las Nieves ',style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize:30,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                           
  ],
);



}

class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(

            child: ListView(
  
  
               padding: EdgeInsets.zero,
              children: [

                DrawerHeader(
                  child: Column(
                   
                         children: [
                        Expanded(child: 
                        Image.asset('assets/r.png'),
                        
                        ),
                        Text("Restaurante las nieves ",
                           style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 20,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),
                           ),
                      SizedBox(
                         
                        height: 10.0,
                        
                      ),

        
                         
                    ],

                  ),
                  decoration: BoxDecoration(
                    color:Colors.blue,
                  ),
                ),
                ListTile(

                  title: Text('Inicio Restaurante '
                  ,
                           style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 12,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),
                  ),
                  onTap: () {},
                ),
                 ListTile(

                  title: Text('Comidas ',
                  
                           style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 12,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),
                  ),
                  onTap: () {},
                  
                ),
              
                 ListTile(

                  title: Text('Pago ',
                  
                           style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 12,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                  onTap: () {},
                ),
                  SizedBox(
                         
                        height: 10.0,
                        
                      ),
                   ListTile(

                  title: Text(' Cerrar Seccion ',
                  
                           style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 12,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                  onTap: () {},
                ),
              
              
                    
              
            
                   
                   
              ],
              
                     
  
              ),

          );
  }
}

Widget todas(){
 
return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=>menuprew()),
            );
          },
          
             style: TextButton.styleFrom(
                 padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
              primary: Colors.black,
              backgroundColor:Colors.green[600]),
              child: Text(
               "Todas",
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

Widget conocenosmas(){
 
return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=>CrearCuenta()),
            );
          },
          
             style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
              primary: Colors.black,
                backgroundColor:Colors.green[600]),
              child: Text(
               "Concenos",
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

Widget reservas(){
 
return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=>menuprew()),
            );
          },
          
             style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
              primary: Colors.black,
             backgroundColor:Colors.green[600]),
              child: Text(
               "Reservas",
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

Widget botones(){
return Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children:  <Widget>[
    todas(),
    reservas(),
    conocenosmas(),

  ],
);



}
Widget reserba(){

    return Container(
       color: Colors.blue[50],
                   width: 100,
                   height:300,
                   
              child:  Center(
                child:Column(
              
                  children: [
                   
                        SizedBox(height: 20.0,),
                    campousuario(),
                    SizedBox(height: 2.0,),
                   contrase(),
                       SizedBox(height: 2.0,),
                         hora(),
                            SizedBox(height: 30.0,),
                          enviar(),

                  ],
                
                
                )),
    );
}

Widget campousuario(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 44.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "numero de personas",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget contrase(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 45.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Dia de reserva",fillColor: Colors.white,filled: true),

    ),
  );
  

}

Widget hora(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 45.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "hora de reserva",fillColor: Colors.white,filled: true),

    ),
  );
}

Widget enviar(){
 
return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=>menuprew()),
            );
          },
          
             style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 20),
              primary: Colors.black,
              backgroundColor:Colors.blue[800]),
              child: Text(
               "enviar",
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