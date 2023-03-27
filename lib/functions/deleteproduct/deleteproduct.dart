import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nuance_admin/model/product_model.dart';

deleteproduct({required ProductModel product,required brandname

}){
   final remove = FirebaseFirestore.instance
   .collection('categories')
   .doc(brandname)
   .collection(brandname)
   .doc(product.doc);

   remove.delete();
   log('deleted');
}