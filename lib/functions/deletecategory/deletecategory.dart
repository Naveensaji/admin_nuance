
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../presentation/screens/category/category.dart';

Future deletecategory({required String category})async{
  final delete =
  FirebaseFirestore.instance.collection('categories').doc(category);
  await delete.delete();
  log('added cate');
  Get.to(()=>CategoryList());
}