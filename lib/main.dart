import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'layout_builder.dart';


void main(){
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ya ALLAH',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyLayoutBuilder(title: 'CASIAN DEVELOPER\'S'),
    );
  }
}