

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/model.dart';
import 'model.dart';

class Cart extends StatefulWidget {
  final List<productosModel> _cart;

  Cart(this._cart);

  @override
  _CartState createState() => _CartState(this._cart);
}

class _CartState extends State<Cart> {
  _CartState(this._cart);
final _scrollcontroler=ScrollController();
var firtScroll=true;
bool _enabled=false;

  List<productosModel> _cart;

          Container pagototal(List<productosModel>_cart)  {

            return Container(
            
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(left: 120),
            height: 700,
            width: 400,
            color: Colors.grey,
            child: Row(
              children: <Widget>[

                Text("Total",style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                 color: Colors.white),
     
            
              ),
              ],
            ),
            );
         }  


String valorTotal(List<productosModel>listaproductos){
double total=0.0;
int cuant0=1;

for(int i=0;i<listaproductos.length;i++){
  total=total+listaproductos[i].precio;
}
return total.toStringAsFixed(2)*cuant0;


}












  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.restaurant_menu),
               onPressed: null,
               color: Colors.white,
            
            ),
        ],
        
     title:Text(
               "Pedidos",
                style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                 color: Colors.white),
       
                ),
                centerTitle: true ,
                leading: 
                  IconButton(
            icon: Icon(Icons.arrow_back),
               onPressed:(){
                 Navigator.of(context).pop();
                 setState(() {
                  _cart.length; 
                 });
               },
               color: Colors.white,
            
            ),
                backgroundColor: Colors.blueGrey,
           ), 
           body:GestureDetector(
             onVerticalDragUpdate: (details){

               if(_enabled && firtScroll){
                 _scrollcontroler.jumpTo(_scrollcontroler.position.pixels-details.delta.dy);
               }
             },
             onVerticalDragEnd:(_){
             
               if(_enabled)  firtScroll=false;
                
               
           },
           child:SingleChildScrollView(child: Column(
  children:<Widget> [
    ListView.builder(
      scrollDirection: Axis.vertical, 
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: _cart.length,
      itemBuilder:(context,index){
        final String image=_cart[index].imagen;
        var item=_cart[index];
        return Column(
         children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical:2.0 ),
          child: Column(
            children: <Widget>[
              Row(
                children:<Widget> [
                  Expanded(child: Container(
          
                    width :100,
                    height:100,
                   child:new Image.asset("assets/$image",
                   fit:BoxFit.contain),
                    
                    )
                  ),
                Column(
                  children:<Widget>[
                    Text(
               item.name,
                style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                 color: Colors.black)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   
                  children:<Widget>[
                     Container(
                       width: 100,
                       height: 40,
                       decoration: BoxDecoration(
                         color: Colors.blue,
                         boxShadow: [
                           BoxShadow(
                             blurRadius: 6.0,
                             color:Colors.blue,
                             offset:Offset(0.0,1.0) 
                           )
                         ],
                         borderRadius: BorderRadius.all(
                           Radius.circular(50.0),
                         )

                       ),
                       margin: EdgeInsets.only(top:20.0),
                       padding: EdgeInsets.all(2.0),
                       child: new Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           SizedBox(height: 8.0,),
                           IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                             onPressed:(){
                           valorTotal(_cart);
                             },
               color: Colors.white,
            
            ),
                         ],
                       ),

                     )

                   ],
                )
                

                  ]
                ),
                SizedBox(height: 1.0,),
               
            Text(item.precio.toString(),
               
                style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                 color: Colors.white),
       
                ),
                ],
              ),
            ],
          ),
          ),
          Divider(
            color: Colors.blue,
          )
        ],
        );
           },
         ),
          SizedBox(width: 38.0,),
           ],

           )


           )
 ),
          
      
      );
       
  }
}