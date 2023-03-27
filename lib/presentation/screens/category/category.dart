
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/functions/deletecategory/deletecategory.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/addcategory/categoryadd.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/viewcategory/detailcategory.dart';

class CategoryList extends StatelessWidget {
  String? value;

  CategoryList({super.key});

  final namecontroller = TextEditingController();
  final nameEDitcontroller = TextEditingController();

  String? categoryName;
  String? categoryProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Categories'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(()=>Categoryadd());
              },
              icon: const Icon(Icons.add))
        ],
      ),
     body:StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('categories').snapshots(),
     
       builder: (context,snapshot) {
         if(snapshot.hasData){
         return ListView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            QueryDocumentSnapshot documentSnapshot=
            snapshot.data!.docs[index];
         return Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListTile(
              onTap: () {
                Get.to(()=>Detailscategory(brand: documentSnapshot['name'],)
                
                );
              },
              tileColor: Colors.white,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        deletecategory(category: documentSnapshot['name']);
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                ],
              ),
              title: Text(
               documentSnapshot['name'],
              style: const TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 21, 20, 20)),
              ),
            ),
          );
          },
    );
         }else{
          return const Text('No data');
         }
       }
     ),
    );
  }
}
