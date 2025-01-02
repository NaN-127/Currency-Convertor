import 'package:currency_converter/currency_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyPage(),
    );
  }
}

 main(){
  runApp(MyApp());
}