import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: const[
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child:  Icon(Icons.android_rounded),
            ),
          )
          
        ],
      ),
    );
  }
}