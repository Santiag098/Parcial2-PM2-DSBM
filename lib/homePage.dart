import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
      body: MyListView(),
    );
  }
}


class MyListView extends StatelessWidget {
  MyListView({super.key});
  final List<Map<String, dynamic>> dataList = [
    {"avatar": "", "content": "List item primary title"},
    {"avatar": "", "content": "List item primary title"},
    {"avatar": "", "content": "List item primary title"},
    {"avatar": "", "content": "List item primary title"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder:(context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text(dataList[index]["avatar"]),
          ),
          title: Text(dataList[index]["content"]),
        );
      },
    );
  }
}