import 'package:clot/constant/colorconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

import 'constant/imageconstant.dart';

class Emptypage extends StatefulWidget {
  const Emptypage({super.key});

  @override
  State<Emptypage> createState() => _EmptypageState();
}

class _EmptypageState extends State<Emptypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.secondColor,
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height*0.2,
            width:width*4,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageConstant.parcel)),
            ),
          ),
          SizedBox(height: height*0.06,),
          Text("Your cart is empty",
            style: TextStyle(
              fontSize: width*0.07
            ),
          ),
          SizedBox(height: height*0.04),
          InkWell(onTap: () {

          },
            child: Container(
              height: height*0.08,
              width: width*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.1),
                color:ColorConstant.fourColor
              ),
              child: Center(
                child: Text("Explore Categories",
                  style: TextStyle(
                    fontSize: width*0.05,
                    color: ColorConstant.secondColor
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//
//
//

//
// class ProductSearchScreen extends StatefulWidget {
//   @override
//   _ProductSearchScreenState createState() => _ProductSearchScreenState();
// }
//
// class _ProductSearchScreenState extends State<ProductSearchScreen> {
//   final TextEditingController _searchController = TextEditingController();
//   List<String> products = [
//     'Hoodie',
//     'Shoes',
//     'Jacket',
//     'Bag',
//     'Shorts',
//     'Accessories'
//   ];
//   List<String> filteredProducts = [];
//
//   void _searchProduct(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         filteredProducts = [];
//       } else {
//         filteredProducts = products
//             .where((product) => product.toLowerCase().contains(query.toLowerCase()))
//             .toList();
//         filteredProducts.sort();
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: TextField(
//           controller: _searchController,
//           onChanged: _searchProduct,
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             hintText: 'Search...',
//             hintStyle: TextStyle(color: Colors.white70),
//             border: InputBorder.none,
//           ),
//         ),
//       ),
//       body: filteredProducts.isNotEmpty
//           ? ListView.builder(
//         itemCount: filteredProducts.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(
//               filteredProducts[index],
//               style: TextStyle(color: Colors.white),
//             ),
//           );
//         },
//       )
//           : Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.search_off, color: Colors.white, size: 50),
//             SizedBox(height: 10),
//             Text(
//               'No item found',
//               style: TextStyle(color: Colors.white, fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
