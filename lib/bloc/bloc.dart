

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



import 'package:navi1/models/Cart.dart';

class ShoppingCartBloc with ChangeNotifier {

  ShoppingCart _shoppingCart = ShoppingCart(0, 0);

  ShoppingCart get shoppingCart => _shoppingCart;
  
  StreamController<ShoppingCart> streamController = StreamController<ShoppingCart>.broadcast();

  get streamSink => streamController.sink;

  get cartStream => streamController.stream;


  void addCart(String itemName){

    switch (itemName) {
      case "doorMats":

        shoppingCart.doorMats++;

        streamSink.add(shoppingCart);
        break;

      case "schoolDress":
        shoppingCart.schoolDress++;

        streamSink.add(shoppingCart);
        break;
    }
    

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    streamController.close();
  }



}


final shoppingB = ShoppingCartBloc();