import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/viewproduct/widgets/pageviewcontainer.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/viewproduct/widgets/prdctnameprice.dart';

class ViewProduct extends StatelessWidget {
  const ViewProduct({super.key, 
    required this.brand,
    required this.name,
    required this.price,
    required this.quantity, 
    required this.description,
    required this.doc,
    required this.imagelist,
    required this.connectiontype});
  final String brand;
  final String name;
  final String price;
  final String quantity;
  final String description;
  final String doc;
  final List imagelist;
  final String connectiontype;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.back();
        },
         icon: const Icon(Icons.arrow_back_ios_new),color: Colors.black,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
           Pageviewcontainer(productimage: imagelist),
           const SizedBox(height: 20),
           ProductDetails(title:'Product Name', detail:name),
           ProductDetails(title:'Price', detail:price),
           ProductDetails(title: 'Quantity', detail:quantity ),
           ProductDetails(title:'Description', detail:description),
           ProductDetails(title:'Connection type', detail: connectiontype)
           ],
      ),
    );
  }
}
