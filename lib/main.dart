import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  )
  );
}

class sandbox extends StatelessWidget{
  const sandbox({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning to code", style: TextStyle(
        fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Color.fromARGB(92, 0, 0, 200),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            color: Colors.amber,
            child:const Text("one"),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: const Text("two"),
          ),
          Container(
            height: 300,
            color: Colors.red,
            child: const Text("three"),
          ),
        ],
      )
    );
  }
}

