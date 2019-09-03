


import 'package:flutter/material.dart';
//Our imports
import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';

class MyApp extends StatelessWidget{

  @override
  build(context){
    
    return MaterialApp( //Text es un argumento posicional
      debugShowCheckedModeBanner: false,
      home:
      Center(
        child: ContadorPage(),
        //child:HomePage(),//cuando te pide un child es que te pide un widget chidget donde uede colocar lo que sea
      ),

      
    );

  }
}