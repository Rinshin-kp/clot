import 'package:clot/provider/add_to_cartprovider.dart';

class Product {
  late String title;
  late String description;
  late String image;
  late String price;
  late String category;
  int qty;

  Product(
      {required this.title, required this.image, required this.price, required this.qty, required this.category,
        required this.description
      });
 
}