import 'package:flutter/material.dart';

class Dummy_Page extends StatelessWidget {
  const Dummy_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> name = [
          "Rohan Shrestha",
          "Bishal Shrestha",
          "Anil Yogi",
          "Ankit Shah"
        ],
        sub = ["Rohan Shrestha", "Bishal Shrestha", "Anil Yogi", "Ankit Shah"];
      
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dummypage"),
        ),
        body: AspectRatio(
          aspectRatio: 2 / 2,
          child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.list),
                  trailing: const Text(
                    "GFG",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text(name[index]),
                  subtitle: Text(sub[index]),
                );
              }),
        ),
      ),
    );
  }
}













// IconButton(
//             onPressed: () {
//               showSearch(context: context, delegate: MyDelegate());
//             },
//             icon: Icon(Icons.search),
//             tooltip: "Search",
//           ),
// }
// PopupMenuButton(
//               itemBuilder: (context) {
//                 return [
//                   PopupMenuItem<int>(
//                     value: 0,
//                     child: Text("My Account"),
//                   ),
//                   PopupMenuItem<int>(
//                     value: 1,
//                     child: Text("Settings"),
//                   ),
//                   PopupMenuItem<int>(
//                     value: 2,
//                     child: Text("Logout"),
//                   ),
//                 ];
//               },
//             )
