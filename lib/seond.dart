import 'package:flutter/material.dart';
import 'package:navi1/bloc/bloc.dart';

import 'package:provider/provider.dart';

import 'package:navi1/models/Cart.dart';

import 'MyHome.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ShoppingCart>(
      builder: (context, ShoppingCart cart, _){
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.backspace),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: 
               Column(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      trailing: Text('${cart.doorMats}'),
                      title: Text('Door Mats'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      trailing: Text('${cart.schoolDress}'),
                      title: Text('School Dress'),
                    ),
                  ),
                ],
              )
           
        );
      },
      
      );
    
  }
}
