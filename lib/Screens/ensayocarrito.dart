import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Screens/menu.dart';
import 'model.dart';
import 'pedidos.dart';




class carro extends StatefulWidget {
  
  @override
  _carroState createState() => _carroState();
}

class _carroState extends State<carro> {
   List<productosModel> _personas = [];
  List<productosModel> _cartList= [];



 @override
  void initState() {
    super.initState();
    _populateDishes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 36.0,
                  ),
                  if (_cartList.length > 0)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(
                          _cartList.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () {
                if (_cartList.isNotEmpty)
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cart(_cartList),
                    ),
                  );
              },
            ),
          )
        ],
       
      ),
     drawer :MenuLateral(),
      body: _buildGridView(),
      
    );
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount:_personas.length,
      itemBuilder: (context, index) {
        var item =_personas[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 2.0,
          ),
          child: Card(
            elevation: 4.0,
            child: ListTile(
              leading: Icon(
                item.icon,
                color: item.color,
              ),
              title: Text(item.name),
              trailing: GestureDetector(
                child: (!_cartList.contains(item))
                    ? Icon(
                        Icons.add_circle,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                onTap: () {
                  setState(() {
                    if (!_cartList.contains(item))
                      _cartList.add(item);
                    else
                      _cartList.remove(item);
                  });
                },
              ),
            ),
          ),
        );
      },
    );
  }

  GridView _buildGridView() {
    return GridView.builder(
        padding: const EdgeInsets.all(4.0),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _personas.length,
        itemBuilder: (context, index) {
          final String image=_personas[index].imagen;
          var item = _personas[index];
          return Card(
              elevation: 5.0,
              child: Stack(
                fit: StackFit.loose,
                alignment: Alignment.center,
                children: <Widget>[
                  Column(
                 
                    children: <Widget>[
                     Container(
             height: 110.0,
        width:110.0,
        
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(110.0),
             border:Border.all(
               color: Colors.white,
            
               width:2.0,
             ),

           ), 
                  child:   ClipOval(
          
                   child:  Image.asset("assets/$image", fit:BoxFit.cover,),),
               
                     
                     ),
                     Text(item.name,
                      textAlign: TextAlign.center, style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 10,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                     SizedBox(height: 15,),
                     Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children:<Widget>[
                        SizedBox(height: 15,),
                     Text(item.precio.toString(

                     ),style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 10,
                           fontStyle: FontStyle.italic,
                           color: Colors.black),),
                           Padding(padding: const EdgeInsets.only(
                             right: 8.0,
                             bottom: 8.0,
                             
                           ),
                           child: Align(alignment: Alignment.bottomRight,
                           child: GestureDetector(child:(!_cartList.contains(item)
                           ?Icon(Icons.shopping_cart_outlined,
                           color: Colors.red,
                           size: 38,
                           ):Icon(Icons.shopping_cart_outlined,
                           color: Colors.green,
                           size: 38,
                           ) ),
                            onTap: () {
                          setState(() {
                            if (!_cartList.contains(item))
                              _cartList.add(item);
                            else
                              _cartList.remove(item);
                          });
                        },
                          
                     
                       
                      ),
                    ),
                  ),
                ],
              )
                    ],
                  ),
                ], ));
        });
  }

  void _populateDishes() {
    var list = <productosModel>[
       productosModel("pollo  asadado", "pollo.png", 10000),
productosModel("Pescado asado", 'carne.png', 12000),
productosModel("Bandeja paisa", "paisa.png", 15000),
productosModel("pollo apanado", "apnado.png", 10000),
       productosModel("pollo  sudado", "psudado.png", 10000),
productosModel("conejo asado", 'conejo.png', 10000),
productosModel("carne sudada", "sudada.png", 10000),
productosModel("Gallina", "gallina.jpg", 100000),
   ];

    setState(() {
      _personas = list;
    });
  }
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

