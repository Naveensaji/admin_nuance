import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nuance_admin/functions/order/orderfuntion.dart';
import 'package:nuance_admin/model/orderModel.dart';


class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key, 
  required this.email}) : super(key: key);
  final String email;
 
 final List<String>? orderId = [
    '#010321', '#082823', '#082828',
    "#023671", '#0828299', '#082822',
    '#082821', '#082829', '#082825',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Orders'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
                  .collection('users')
                  .doc(email)
                  .collection('order')
                  .snapshots(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10,),
              itemCount: orderId!.length,
              itemBuilder:(context, index) {
              QueryDocumentSnapshot documentSnapshot =snapshot.data!.docs[index];
                return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                    width: 200,
                    height: 170,
                    decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Column(
                      children: [
                      Padding(
                            padding:
                            const EdgeInsets.only(left: 40, right: 50),
                            child: Row(
                            children: [
                            Container(
                            height: 90,
                            width: 90,
                                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                      child: Image.network(
                                      documentSnapshot['images'][0],
                                       fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(width: 20,),
                                Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                      Text('Order id : ${orderId![index]}'),
                                      Text('${documentSnapshot['name']}'),
                                      Text('${documentSnapshot['price']}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                            const Divider(
                            thickness: 1,
                            color: Colors.red,
                          ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      // ignore: deprecated_member_use
                                      primary:
                                      const Color.fromARGB(255, 12, 139, 55),
                                      shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10))),
                                  onPressed: () {
                                    acceptrejectOrder(orderModel: OrderModel(
                                    isCanceled: false, 
                                    isDelivered: true, 
                                    id: documentSnapshot['id']), 
                                    email: email);
                                  },
                                  child: const Text(
                                 'Accept Order',
                                 style: TextStyle(color: Colors.white),
                                  )),
                             const SizedBox(width: 40,),
                             ElevatedButton(
                             style: ElevatedButton.styleFrom(
                                      // ignore: deprecated_member_use
                                      primary: const Color(0xffdd0021),
                                      shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10))),
                                      onPressed: () {
                                       acceptrejectOrder(
                                       orderModel: OrderModel(
                                       isCanceled: true,
                                       isDelivered: false,
                                       id: documentSnapshot['id']),
                                       email: email);
                                  },
                                    child: const Text(
                                    'Reject Order',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    );
              },
                    );
            }else{
              return const Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              );
            }
          },)
        ));
  }
}
