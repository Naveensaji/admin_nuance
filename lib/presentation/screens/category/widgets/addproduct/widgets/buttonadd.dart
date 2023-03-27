

import 'package:flutter/material.dart';

class buttonadd extends StatelessWidget {
  const buttonadd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    // margin: EdgeInsets.only(top: 50,left: 20),
    height: 55,
    width: 90,
    decoration: BoxDecoration(color: Colors.black,
    borderRadius: BorderRadius.circular(20)
    ),
    child:const Center(child: Text('ADD',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500),))
    );
  }
}
