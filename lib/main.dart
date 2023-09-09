import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main()
{
  runApp(
    MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("CALCULATOR"),
          backgroundColor: Colors.amberAccent,
        ),
        body:GradientContainer(),
      ),
    ),
  );

}


