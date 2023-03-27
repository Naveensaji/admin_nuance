
import 'package:flutter/material.dart';

class Pageviewcontainer extends StatelessWidget {
  const Pageviewcontainer({
    Key? key, 
    required this.productimage,
  }) : super(key: key);
  final List productimage;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 180,
     decoration: const BoxDecoration(
       color: Colors.white,
     ),
     child: PageView.builder(
       itemCount: productimage.length,
       scrollDirection: Axis.horizontal,
       itemBuilder: (context, index) {
       return  Image.network(productimage[index]);
     },),
    );
  }
}