import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/functions/addproduct/addproduct.dart';
import 'package:nuance_admin/model/product_model.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/addproduct/widgets/addimagecontainer.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/addproduct/widgets/buttonadd.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/addproduct/widgets/formfieldaddproduct.dart';

class AddnewProduct extends StatelessWidget {
   AddnewProduct({super.key, required this.brand});
TextEditingController namecontroller = TextEditingController();
TextEditingController pricecontroller = TextEditingController();
TextEditingController quantitycontroller = TextEditingController();
TextEditingController descriptioncontroller = TextEditingController();
TextEditingController connectiontypecontroller = TextEditingController();
final String brand;

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    leading: IconButton(onPressed: (){
      Get.back();
    },
     icon: const Icon(Icons.arrow_back)),
    title: const Text('Add New Product'),
    centerTitle: true,
    backgroundColor: Colors.black,
   ),
   body: ListView(
     children: 
       [Column(
        children: [
          const SizedBox(height: 25,),
          addformfield(
          hintText: 'Name of the Product',
          controller:namecontroller ,
          width: 320,),
           const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            addformfield(
            hintText: 'Price', 
            controller: pricecontroller,
            width: 150),
            const SizedBox(width: 30,),
            addformfield(
            hintText: 'Quantity',
            controller: quantitycontroller,
            width: 150),],),
            const SizedBox(height: 20,),
            addformfield(
            hintText: 'Description',
            controller: descriptioncontroller,
            width: 320),
            const SizedBox(height: 20,),
            addformfield(
            hintText: 'Connection Type',
            controller: connectiontypecontroller,
            width: 320),
             const SizedBox(height: 20,),
              AddImageWidget(),
              GestureDetector(
                onTap: ()async {
                await  addproduct(
                    brandname: brand,
                    product: ProductModel(
                      doc: namecontroller.text,
                      name: namecontroller.text,
                      price: pricecontroller.text,
                      quantity: quantitycontroller.text,
                      description: descriptioncontroller.text,
                     connectiontype: connectiontypecontroller.text,
                     imagelist: image
                      ), 
                      );
                      Get.back();
                },
                child:  const buttonadd())
        ],
       ),
     ],
   ),
    );
  }
}
