import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/presentation/screens/order/orderscree.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('User Details'),
        centerTitle: true,
        leading: IconButton(
        onPressed: (){Get.back();}, 
        icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child:StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
          return ListView.separated(itemBuilder: (context, index){
             QueryDocumentSnapshot documentSnapshot =  snapshot.data!.docs[index];
            return  ListTile(
            tileColor: Colors.black,
            title:  Center(child: Text(documentSnapshot['email'],style: const TextStyle(color: Colors.white),)),
            trailing: const Icon(Icons.email,color: Colors.grey,),
            onTap: () => Get.to(()=>OrderScreen(email: documentSnapshot['email'],)),
          );
        }, 
        separatorBuilder: (context, index) {
        return const SizedBox(height: 20,);
        },
      itemCount:snapshot.data!.docs.length
      );
            }else{
               return const Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                );
            }
          },)
      ),
    );
  }
}