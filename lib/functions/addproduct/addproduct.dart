import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/model/cateModel.dart';
import 'package:nuance_admin/model/product_model.dart';
import 'package:nuance_admin/presentation/screens/category/category.dart';

Future addproduct(
  {
    required ProductModel product,required String brandname})async{
  final add = FirebaseFirestore.instance.collection('categories')
  .doc(brandname)
  .collection(brandname)
  .doc(product.doc);
  final json = product.toJson();
  await add.set(json);
  log('added');
}

Future addcategory({required CategoryModel cate})async{
  final add =
  FirebaseFirestore.instance.collection('categories').doc(cate.name);
  final json=cate.toJson();

  await add.set(json);
  log('added cate');
  Get.to(()=>CategoryList());
}