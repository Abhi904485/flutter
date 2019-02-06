import 'package:flutter/material.dart';
import './product_manager.dart';
void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter "),
        ),
        body: ProductManager("Abhishek"),
      ),
    );
  }
}

