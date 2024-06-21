import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/models/card_model.dart';
import 'package:sneakershop/screen/slapscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SlapScreen(),
      ),
    );
  }
}
