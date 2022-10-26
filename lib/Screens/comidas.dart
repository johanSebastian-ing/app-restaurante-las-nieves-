import 'package:flutter/material.dart';


class comidas extends StatelessWidget {
  
 
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
             image: AssetImage('assets/comidas.png'),
             fit:BoxFit.cover),
              ),
              child:  Center(
                child:Column(
              
                  children: [
                   
                   
                         

                  ],
                
                
                )),
    );
}


Widget campousuario(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Quilindo",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget contrase(){
return Container(
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 5.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "password",fillColor: Colors.white,filled: true),

    ),
  );

}
Widget boton(){
 return ElevatedButton(

     onPressed: () {
       print('Pressed');
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
     
        
  
  ));
  

  
}
Widget botonCrear(){
 return ElevatedButton(

     onPressed: () {
       print('Pressed');
    },
     style: TextButton.styleFrom(
     primary: Colors.black,
     backgroundColor:Colors.blue[500]),
   child: Text(
       "Crear Cuenta",
       style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 10,
        fontStyle: FontStyle.italic,
        color: Colors.white),
     
        
  
  ));
  

  
}