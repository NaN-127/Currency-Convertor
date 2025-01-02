

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CurrencyPage extends StatefulWidget{
  
   CurrencyPage({super.key});

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  double num = 0;
  TextEditingController textEditingController = TextEditingController();

  void convert(){
    setState(() {
      double value = double.parse(textEditingController.text);
      
      
      num = value * 85.79;
    });
  }

  @override
   Widget build(BuildContext context)=>
     Scaffold(
      appBar: AppBar(
        title: Text("Currency Convertor",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ), 
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${num.toStringAsFixed(2)} Rs", 
            
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,

            ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: textEditingController,
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  
                ),
                
                style: TextStyle(
                  color: Colors.black
                  
                  
                ),
                decoration: InputDecoration(
                  hintText: " Please enter the amount in USD",
                  prefixIcon: Icon(Icons.monetization_on_rounded, color: Colors.green,),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2
                      
                    ),
                    borderRadius: BorderRadius.circular(20)
                    
                  ),
              
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
                convert();

            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.green),
              foregroundColor: WidgetStatePropertyAll(Colors.black),
              fixedSize: WidgetStatePropertyAll(Size(410, 45)),
             ),

             child: const Text("Convert", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 17),),
             
             ),
          ],
        ),
      ),
    );
  
}