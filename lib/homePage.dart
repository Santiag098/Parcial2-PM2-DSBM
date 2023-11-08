import 'package:flutter/material.dart';
import 'package:parcial2_/Page2.dart';

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
void animar(){
  
}


class MyListView extends StatelessWidget {
  MyListView({super.key});
  final List<Map<String, dynamic>> dataList = [
    {"avatar": "", "content": "List item primary title", "otherText": "Circumfluus aeris obsistitur ardentior fert", "avatarImage": "lib/assets/avatar.jpg",},
    {"avatar": "", "content": "List item primary title", "otherText": "Circumfluus aeris obsistitur ardentior fert", "avatarImage": "lib/assets/avatar.jpg",},
    {"avatar": "", "content": "List item primary title", "otherText": "Circumfluus aeris obsistitur ardentior fert", "avatarImage": "lib/assets/avatar.jpg",},
    {"avatar": "", "content": "List item primary title", "otherText": "Circumfluus aeris obsistitur ardentior fert", "avatarImage": "lib/assets/avatar.jpg",},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder:(context, index) {
        return  ListTile(
          leading: CircleAvatar(
            backgroundImage: dataList[index]["avatarImage"] != null
            ? AssetImage(dataList[index]["avatarImage"])
            : const AssetImage('lib/assets/avatar.jpg'),
          ),
          title: Text(dataList[index]["content"]),
          subtitle: Text(dataList[index]["otherText"]),
          onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
          }
        );
        
      },
    );
  }
}