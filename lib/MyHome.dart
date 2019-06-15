import 'package:flutter/material.dart';
import 'package:navi1/bloc/bloc.dart';

import 'package:provider/provider.dart';
import 'package:navi1/seond.dart';

import 'models/Cart.dart';




class MyHomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    
    return Consumer<ShoppingCart>(
      builder: (BuildContext context, ShoppingCart cart, _) {
        return Scaffold(
      appBar: AppBar(
        
        title: Text('New text'),
        actions: <Widget>[
          IconButton(
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              print('$context');
              return StreamProvider<ShoppingCart>(
                initialData: shoppingB.shoppingCart,
                builder: (BuildContext context)=> shoppingB.cartStream,
                child: Second(),

              );
              
              
            }));

          },
          icon: Icon(Icons.shopping_basket),
          )

        ],
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            

            Card(
              child: ListTile(
                trailing:  Icon(Icons.add_shopping_cart), onTap: (){

                  
                  shoppingB.addCart("doorMats");

              },
              title: Text('Door Mats'),
              
              ),

            ),
            Card(
              child: ListTile(
                trailing:  Icon(Icons.add_shopping_cart), onTap: (){
                  shoppingB.addCart("schoolDress");

              },
              title: Text('School dress'),
              
              ),

            )
          ],
        ),
      ),
      );
      }
    );
  }
}
