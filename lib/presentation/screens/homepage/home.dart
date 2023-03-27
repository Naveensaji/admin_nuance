import 'package:flutter/material.dart';

import '../category/category.dart';
import '../order/orderscree.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Audiozic Admin'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              // GestureDetector(
              //   onTap: () => Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => Userside(),
              //   )),
              //   child: Container(
              //       height: 200,
              //       margin: EdgeInsets.all(30),
              //       width: double.infinity,
              //       decoration: const BoxDecoration(
              //           borderRadius: BorderRadius.all(
              //             Radius.circular(10),
              //           ),
              //           color: Colors.black),
              //       child: const Center(
              //           child: Text(
              //               style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 25,
              //                 color: Colors.white,
              //               ),
              //               'Users'))),
              // ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CategoryList())),
                child: Container(
                    height: 200,
                    margin: const EdgeInsets.all(30),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.black,
                    ),
                    child: const Center(
                        child: Text(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: "Font1",
                              color: Colors.white,
                            ),
                            'Product side'))),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => OrderScreen())),
                child: Container(
                    height: 200,
                    margin: const EdgeInsets.all(30),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.black,
                    ),
                    child: const Center(
                        child: Text(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                            'Orders'))),
              )
            ],
          ),
        ));
  }
}
