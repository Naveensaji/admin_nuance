import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/functions/editproduct/editproduct.dart';
import 'package:nuance_admin/model/product_model.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/editpproduct/widgets/editbutton.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/editpproduct/widgets/editformfield.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/editpproduct/widgets/imageedit.dart';

class EditProduct extends StatelessWidget {
   EditProduct({super.key,
  required this.brand, 
  required this.name, 
  required this.price, 
  required this.quantity, 
  required this.description, 
  required this.connectiontype, 
  required this.doc, 
  required this.imagelist});
  final String brand;
  final String name;
  final String price;
  final String quantity; 
  final String description;
  final String connectiontype;
  final String doc;
  final List imagelist;


late TextEditingController namecontroller = TextEditingController(text: name);
late TextEditingController pricecontroller = TextEditingController(text: price);
late TextEditingController quantitycontroller = TextEditingController(text: quantity);
late TextEditingController descriptioncontroller = TextEditingController(text: description);
late TextEditingController connectiontypecontroller = TextEditingController(text: connectiontype);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
         backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        },
         icon: const Icon(Icons.arrow_back)),
        title: const Text('Edit Product',style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 20,),
              editformfield(labeltext: 'Name Of The Product',controller: namecontroller,),
             editformfield(labeltext: 'price',controller:pricecontroller ,),
             editformfield(labeltext: 'Quantity',controller: quantitycontroller,),
              editformfield(labeltext: 'Description',controller: descriptioncontroller,),
              editformfield(labeltext: 'Connection Type',controller: connectiontypecontroller,),
               EditImageWidget(image: imagelist),
               GestureDetector(
                onTap: () {
                  updateproduct(
                    brand: brand,
                    product: ProductModel(
                      doc: doc,
                      name: namecontroller.text,
                      price: pricecontroller.text, 
                      quantity: quantitycontroller.text, 
                      description: descriptioncontroller.text, 
                      connectiontype: connectiontypecontroller.text, 
                      imagelist: imagelist),
                     );
                     Get.back();
                },
                child: buttonedit())

              
            ],
          ),
        ],
      ),
    );
  }
}
