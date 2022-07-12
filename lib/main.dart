import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:great_food/widgets/add_great_food_form.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
    builder: (ctx, snapshot) =>MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    ));
  }
}

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Great Food Recommendations'),
      ),
      body: Center(
      child: Text('This is a sample Text widget'),
      ),
    );
  }
}
