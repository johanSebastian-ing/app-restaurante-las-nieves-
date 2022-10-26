import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'package:flutter_application_1/Screens/inicio_login.dart';
import 'package:flutter_application_1/Screens/reserva.dart';

import 'comidas.dart';
import 'crearcuenta.dart';
import 'Descripcioncomida.dart';
import 'reservamesa.dart';

class menuprew extends  StatefulWidget{
  @override 
  menuState createState()=> menuState();

 
}
class menuState extends State<menuprew >{

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mi app',
      home: Scaffold(
        appBar: AppBar(
      
        backgroundColor: Colors.blueGrey,
        ),
       drawer: MenuLateral(),
        body: homer(),
        ),
      );
      
    
    
  }

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
Widget homer(){
       return Scaffold(
backgroundColor: Colors.white,
body:ListView(
  children: <Widget>[
superior(),
  SizedBox(height: 10.0,),
botones(),
  SizedBox(height: 20.0,),
  listacomidas(),
   
    SizedBox(height: 50.0,),
  listacomidas2(),
  
    referenciaComida(),
      SizedBox(height: 50.0,),
 listacomidas3(),
 referenciaComida2(),


    SizedBox(height: 30.0,),
  listacomidas2(),
  referenciaComida(),
  
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

Widget referenciaComida(){
 return Column(
    children:<Widget>[
      
    Container(
    height: 40.0,
    color: Colors.transparent,
          child:Row(
       mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:  <Widget>[
          
        Text(' carne',style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize:10,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                       
                           leemas(),
                            
                           Text('paisa',style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize:10,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                           SizedBox(height:30.0,),
                            leemas(),
                           Text('pollo     ',style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize:10,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                            leemas(),
                           
            ],
         ),
   ),
     
    ],


  );
}




Widget referenciaComida2(){
 return Column(
    children:<Widget>[
      
    Container(
    height: 40.0,
    color: Colors.transparent,
          child:Row(
       mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:  <Widget>[
          
        Text(' apanado',style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize:10,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                       
                           leemas(),
                            
                           Text('conejo',style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize:10,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                           SizedBox(height:30.0,),
                            leemas(),
                           Text('pescado    ',style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize:10,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                            leemas(),
                           
            ],
         ),
   ),
     
    ],


  );
}





Widget listacomidas(){
  return Column(
    
    children:<Widget>[
       Text('calidad',style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 15,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
    Container(
    height: 80.0,
    
    
        child:  ListView(
            
    scrollDirection: Axis.horizontal,
             children: <Widget>[
                comidas(),
                carne(),
                comidapescado(),
                 conejo(),
               
                 comidas(),
                carne(),
                comidapescado(),
                 conejo(),
                
    ], 
    ),
    ),
     
    ],


  );
}

Widget listacomidas2(){
  return Column(
    children:<Widget>[
      
    Container(
    height: 150.0,
    
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
   
             children: <Widget>[
                carnesudada(),
                paisa(),
                asado(),
             
             
                  
         
       
    ],
     
    ),
    
    ),
    ],


  );
}

Widget listacomidas3(){
  return Column(
    children:<Widget>[
      
    Container(
    height: 150.0,
    
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
   
             children: <Widget>[
               apanado(),
               conejo2(),
                 Pes2(),
             
             
                  
         
       
    ],
     
    ),
    
    ),
    ],


  );
}


Widget listaDescipcionDeComida(){
  return Column(
    children:<Widget>[
      
    Container(
    height: 300.0,
    
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
                DescricionGallina(),
                 Descricionpescado(),
                Descricionconejo(),
               
               
                  
         
       
    ],
     
    ),
    
    ),
    ],


  );
}

Widget comidas(){

  return  Row(
    children:<Widget>[
  Stack(
              alignment: AlignmentDirectional.topCenter,            
        children: <Widget>[
         Container(
        height: 80.0,
        width:80.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(200.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
              
             ),

           ),
           child: ClipOval(
            child: Image.asset('assets/gallina.jpg',fit:BoxFit.cover,),
                  

               ),
               

           ),
           
           

        ],
      ),
      SizedBox(width: 30,)
    ],
  );

   
}

Widget comidapescado(){

  return  Row(
    children:<Widget>[
  Stack(
            
        children: <Widget>[
         Container(
             height: 80.0,
        width:80.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
          child: ClipOval(
            child: Image.asset('assets/pes.png',fit:BoxFit.cover,),
                  

               ),
               

           ),
            
                  

               
               
        ],
      
       ),
        SizedBox(width: 30,)
    ],
  );
   
}
Widget conejo(){

  return  Row(
    children:<Widget>[
  Stack(
            
        children: <Widget>[
         Container(
             height: 80.0,
        width:80.0,
        
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
           child: ClipOval(
            child: Image.asset('assets/conejo.png',fit:BoxFit.cover,),
                  

               ),
               

           ),
           

        ],
     
       ),
        SizedBox(width: 30,)
    ],
  );
   
}
Widget conejo2(){

  
  return Stack(
            
        children: <Widget>[
         Container(
         height: 130.0,
        width: 130.0,
        
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
           
            child: Image.asset('assets/conejo.png',fit:BoxFit.cover,),
                  

               ),
               


        
        
            

        ],
      );
   
}

Widget Pes2(){

  
  return Stack(
            
        children: <Widget>[
         Container(
         height: 130.0,
        width: 130.0,
        
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
           
            child: Image.asset('assets/pes.png',fit:BoxFit.cover,),
                  

               ),
               


        
        
            

        ],
      );
   
}
Widget carne(){

  return  Row(
    children:<Widget>[
  Stack(
            
        children: <Widget>[
         Container(
          height: 80.0,
        width:80.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
           child: ClipOval(
            child: Image.asset('assets/carne.png',fit:BoxFit.cover,),
                  

               ),
               

           )
           
            

        ],
  
      
       ),
        SizedBox(width: 30,)
    ],
  );
   
}
   

Widget paisa(){

  return Stack(
              
            
        children: <Widget>[
         Container(
          height: 130.0,
        width: 130.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
           
            child: Image.asset('assets/paisa.png',fit:BoxFit.cover,),
                  

               ),
               

           
           
            

        ],
      );
   
}Widget carnesudada(){

  return Stack(
              
            
        children: <Widget>[
         Container(
          height: 130.0,
        width: 130.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
           
            child: Image.asset('assets/sudada.png',fit:BoxFit.cover,),
                  

               ),
               

           
           
            

        ],
      );
   
}Widget asado(){

  return Stack(
              
            
        children: <Widget>[
         Container(
          height: 130.0,
        width: 130.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
          
            child: Image.asset('assets/asado.png',fit:BoxFit.cover,),
                  

               ),
               

          
           
            

        ],
      );
   
}Widget apanado(){

  return Stack(
              
            
        children: <Widget>[
         Container(
          height: 130.0,
        width: 130.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ),
         
            child: Image.asset('assets/apnado.png',fit:BoxFit.cover,),
                  

               ),
               

        
           
            

        ],
      );
   
}
Widget DescricionGallina(){

  return Stack(
              
            
        children: <Widget>[
         Container(
          height: 130.0,
        width: 130.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
             
            
               width:2.0,
             ),

           ),
        
      ),
      Text(
          'Hello World',
         
          style: TextStyle(
            fontSize: 1,
            color: Colors.black87,
          ),
        ),
                  

              
               

           
           
            

        ],
      );
   
}

Widget Descricionpescado(){

  return Stack(
              
            
        children: <Widget>[
         Container(
          height: 130.0,
        width: 130.0,
        color: Colors.blue,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
              
            
               width:2.0,
             ),

           ),
        

               ),
                Text(
          'Hello World',
         
          style: TextStyle(
            fontSize: 1,
            color: Colors.black87,
          ),
        ),

           
           
            

        ],
      );
   
}

Widget Descricionconejo(){

  return Stack(
              
            
        children: <Widget>[
         Container(
          height: 130.0,
        width: 130.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               
               width:2.0,
             ),

           ),
           
     

               ),
               Text(
          'Hello World',
         
          style: TextStyle(
            fontSize: 1,
            color: Colors.black87,
          ),
        ),

           
           
            

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
                    color:Colors.grey,
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
              MaterialPageRoute(builder:(BuildContext context)=>menuprew()),
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
              MaterialPageRoute(builder:(BuildContext context)=>reserprew()),
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
Widget leemas() {

return StreamBuilder(
 builder :(BuildContext context,AsyncSnapshot snapshot){
   return ElevatedButton(
 

      onPressed: () {
        
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder:(BuildContext context)=> descripcionpes()),
            );
          },
          
             style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
              primary: Colors.black,
              backgroundColor:Colors.green[600]),
              child: Text(
               "leer mas",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 5
                ,
                fontStyle: FontStyle.italic,
                 color: Colors.white),
     
     ),
  
    );


  
 }
);
  
}