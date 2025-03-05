import 'package:flutter/cupertino.dart';

import '../model/product_model.dart';

class CartProvider extends ChangeNotifier{
  final List<Product>cart =[];
   List<Product>get  Cart=>Cart;
   void Favorite(Product product){
     if (cart.contains(product)){
       for(Product element in cart){
         element.qty++;
       }
     }else{
       Cart.add(product);

     }
     notifyListeners();
   }
   // static CartProvider of(BuildContext context,{bool listen =true}){
     // return Product.of<CartProvider>(

     // );
   }
   // }