
import 'package:flutter/material.dart';

class editpricerow extends StatelessWidget {
  const editpricerow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 150,
        child: TextFormField(
    
    style: const TextStyle(
          color: Colors.white,
    ),
    decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            label: Text(
              'Price',
              style: TextStyle(color: Colors.white70),
            ),
            // hintText: 'Name Of the Product',
            hintStyle: TextStyle(color: Colors.white70)),
        ),
      ),
    ),
     Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 150,
        child: TextFormField(
    
    style: const TextStyle(
          color: Colors.white,
    ),
    decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            label: Text(
              'Quantity',
              style: TextStyle(color: Colors.white70),
            ),
            // hintText: 'Name Of the Product',
            hintStyle: TextStyle(color: Colors.white70)),
        ),
      ),
    ),
      ],
    );
  }
}
