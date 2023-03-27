

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/functions/deleteproduct/deleteproduct.dart';
import 'package:nuance_admin/model/product_model.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/addproduct/addproduct.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/editpproduct/editproduct.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/viewproduct/viewproduct.dart';
class Detailscategory extends StatelessWidget {
  const Detailscategory({super.key, required this.brand});
   final String brand;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title:  Text(brand.toString(),style: const TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: (){
            Get.to(()=> AddnewProduct(brand: brand,));
          }, icon: const Icon(Icons.add))
        ],
      ),
      body:
      StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
        .collection('categories')
        .doc(brand)
        .collection(brand)
        .snapshots(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
               itemCount: snapshot.data!.docs.length, 
               itemBuilder: (context, index) {
                QueryDocumentSnapshot documentSnapshot=snapshot.data!.docs[index];
               return  Padding(
                 padding: const EdgeInsets.only(left: 12,right: 15,top: 20),
                 child: ListTile(
                   onTap: () {
                     Get.to(()=> ViewProduct(
                      brand: brand,
                      doc: documentSnapshot['doc'],
                      name: documentSnapshot['name'],
                      price: documentSnapshot['price'],
                      quantity: documentSnapshot['quantity'],
                      description: documentSnapshot['description'],
                      connectiontype: documentSnapshot['connectiontype'],
                      imagelist: documentSnapshot['image'].toList(),

                     ));
                   },
                 tileColor: Colors.white,
                 leading: Container(
                   clipBehavior: Clip.none,
                   width: 70,
                   height: 70,
                   child: Image.network('https://rukminim1.flixcart.com/image/416/416/k4hcjgw0pkrrdj/headphone-refurbished/z/n/7/u-wh-ch510-sony-original-imafk72hs5qwy5ub.jpeg?q=70'),
                 ),
                 title: Text(documentSnapshot['name'],style: const TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600),),
                 subtitle: Text(documentSnapshot['price'],style: const TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
                 trailing: Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                   IconButton(onPressed: (){
                     Get.to(()=> EditProduct(
                      brand: brand,
                      doc: documentSnapshot['doc'],
                      name: documentSnapshot['name'],
                      price: documentSnapshot['price'],
                      quantity: documentSnapshot['quantity'],
                      description: documentSnapshot['description'],
                      connectiontype: documentSnapshot['connectiontype'],
                     imagelist: documentSnapshot['image'],
                     ));
                   }, 
                   icon: const Icon(Icons.edit)),
                  IconButton(onPressed: (){
                    deleteproduct(
                      brandname: brand,
                      product: ProductModel(
                    doc: documentSnapshot['doc'],
                    name: documentSnapshot['name'],
                    price:documentSnapshot['price'], 
                    quantity:documentSnapshot['quantity'],
                    description: documentSnapshot['description'], 
                    connectiontype: documentSnapshot['connectiontype'],
                    imagelist: documentSnapshot['image']
                    
                    ));
                    log('product deleted');
                    Get.back();
                  }, 
                   icon: const Icon(Icons.delete)),
                 ],),
                 
             ),
               );
             }
             
             );
          }else{
            return const Text('No data');
          }
        },
      )
     
    );
  }
}