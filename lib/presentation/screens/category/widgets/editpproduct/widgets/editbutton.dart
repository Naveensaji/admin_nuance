
import 'package:flutter/material.dart';

class buttonedit extends StatelessWidget {
  const buttonedit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    // margin: EdgeInsets.only(top: 50,left: 20),
    height: 55,
    width: 90,
    decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 253, 253),
    borderRadius: BorderRadius.circular(20)
    ),
    child:const Center(child: Text('Edit',style: TextStyle(color: Color.fromARGB(255, 82, 79, 79),fontSize: 16,fontWeight: FontWeight.w500),))
    );
  }
}
