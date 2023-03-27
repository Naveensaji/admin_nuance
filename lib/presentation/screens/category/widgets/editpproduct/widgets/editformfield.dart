
import 'package:flutter/material.dart';

class editformfield extends StatelessWidget {
   editformfield({
    required this.labeltext,
    required this.controller,
    Key? key,
    this.keyboardType,
  }) : super(key: key);
String labeltext;
final TextInputType? keyboardType;
TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller:controller ,
        keyboardType: keyboardType,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration:  InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            label: Text(
              labeltext,
              style: const TextStyle(color: Colors.white70),
            ),
            // hintText: 'Name Of the Product',
            hintStyle: const TextStyle(color: Colors.white70)),
      ),
    );
  }
}