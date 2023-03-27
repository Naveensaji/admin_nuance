
import 'package:flutter/material.dart';

class Addcategorycontainer extends StatelessWidget {
  const Addcategorycontainer({
    Key? key,
    required this.categorycontroller,
  }) : super(key: key);

  final TextEditingController categorycontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.only(top: 50),
      height: 55,
      width: 290,
      decoration: BoxDecoration(color: Colors.black,
      borderRadius: BorderRadius.circular(20)
      ),
      child: ListTile(
        leading: const Icon(Icons.add,color: Colors.grey),
        title: TextFormField(
         controller: categorycontroller,
          onChanged: (value) {},
          cursorColor:  Colors.white,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Add category',
            hintStyle: TextStyle(color:  Colors.grey,fontSize: 14
            )
          ),
        ),
      ),
    );
  }
}