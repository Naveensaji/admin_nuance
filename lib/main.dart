
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance_admin/presentation/screens/homepage/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nuance Admin',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen (),
        );
  }
}
