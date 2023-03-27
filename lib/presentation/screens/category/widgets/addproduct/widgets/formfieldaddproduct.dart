
import 'dart:ffi';

import 'package:flutter/material.dart';

class addformfield extends StatelessWidget {
   addformfield({
    Key? key, 
    required this.hintText,
    required this.width,
    required this.controller, 
   this.keyboardType
  }) : super(key: key);
final String hintText;
final double width;
final TextInputType? keyboardType;
final TextEditingController controller ;
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 58,
    width: width,
    decoration: BoxDecoration(color: Colors.black,
    borderRadius: BorderRadius.circular(20)
    ),
    child: ListTile(
      title: TextFormField(
      // controller: categorycontroller,
        onChanged: (value) {},
        cursorColor:  Colors.white,
        keyboardType:keyboardType ,
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color:  Colors.grey,fontSize: 15
          )
        ),
      ),
    ),
    );
  }
}