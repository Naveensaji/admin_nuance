
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key, 
    required this.title, 
    required this.detail,
  }) : super(key: key);
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
     // ignore: prefer_const_literals_to_create_immutables
     children: [
        Padding(
         padding: const EdgeInsets.only(left: 15),
         child: Text('$title:   $detail',
         style: const TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w700),),
       ),
      const SizedBox(height: 20),
    
     ],
    );
  }
}
