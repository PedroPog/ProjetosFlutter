
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Contador(),
    )
  );
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  void inclement() {
    print("Incremento");
    
  }
  void declement() {
    print("Decremento");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      // ignore: prefer_const_constructors
      appBar: Tab(
        text: "Contador",
      ),
      backgroundColor: Color.fromARGB(255, 233, 160, 160),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pode entrar",style: TextStyle(
            fontSize: 30.0,
            color: Color.fromARGB(255, 68, 55, 184)
          ),),
          Text("0",style: TextStyle(
            fontSize: 30.0,
            color: Color.fromARGB(255, 53, 33, 231)
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: inclement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  animationDuration: Duration(seconds: 3000),
                  foregroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),
                                                        topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  )
                ),
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                )
              ),
              SizedBox(width: 80),
              TextButton(
                onPressed: declement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  animationDuration: Duration(seconds: 2000),
                  foregroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Text(
                  "Sair",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                )
              )
            ],
          )
        ],
      ),
    ),
    title: "Contador 2.0",
    debugShowCheckedModeBanner: false,
    );
  }
  
  

  
}