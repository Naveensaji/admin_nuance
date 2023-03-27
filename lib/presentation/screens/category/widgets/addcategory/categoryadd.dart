import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/functions/addproduct/addproduct.dart';
import 'package:nuance_admin/model/cateModel.dart';
import 'package:nuance_admin/presentation/screens/category/category.dart';
import 'package:nuance_admin/presentation/screens/category/widgets/addcategory/widgets/buttoncontainer.dart';

import 'widgets/addcategorycontainer.dart';

class Categoryadd extends StatelessWidget {
   Categoryadd({
    Key? key,
  }) : super(key: key);
  TextEditingController nameconroller = TextEditingController();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('Add New Category'),
      ),
      body: Center(
        child: Column(
          children: [
            Addcategorycontainer(categorycontroller: nameconroller),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                       addcategory(
                    cate: CategoryModel(name: nameconroller.text)
                  );
                  Get.to(()=>CategoryList());
                    },
                    child: Buttoncontainer(buttonname: 'Create')),
                   const SizedBox(width:30),
                  Buttoncontainer(buttonname: 'Cancel'),
                ],
              ),
            )
            ],
        ),
      ),
    );
  }
}
