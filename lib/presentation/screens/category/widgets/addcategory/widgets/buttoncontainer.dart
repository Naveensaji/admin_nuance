
import 'package:flutter/material.dart';

class Buttoncontainer extends StatelessWidget {
   Buttoncontainer({
    Key? key,
      required this.buttonname

  }) : super(key: key);
  String buttonname;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black,
      borderRadius: BorderRadius.circular(20)  ),
      height: 45,
      width: 100,
      child: Center(child: Text(buttonname,style: const TextStyle(fontSize: 14,color: Colors.grey),)),
    );
  }
}
