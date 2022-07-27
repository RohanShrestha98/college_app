import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_application_1/wigets/carasol.dart';
import 'package:flutter_application_1/wigets/listview1.dart';
import '../searchbar.dart';
import 'drawer.dart';

// ignore: must_be_immutable
class Home_page extends StatefulWidget {
  Home_page({Key? key}) : super(key: key);

  List<String> classes = [
    "DataBase Lecture"
        "ISA Tutorial"
        "Embeded Workshop"
        "Computational Math"
  ];
  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Herald College kathmandu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MyDelegate());
            },
            icon: Icon(Icons.search),
            tooltip: "Search",
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              tooltip: "notification"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset(
                "assets/images/2.jpg",
                width: 38,
              ),
            ),
          )
        ],
      ),
      drawer: MyDrawer(),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 6),
                child: Text(
                  "Upcomming Programs",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 200.0,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: MyCarasol()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 10),
                child: Text(
                  "Classes for the day",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green),
                ),
              ),
              SizedBox(height: 40, child: MyListView()),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 12),
                child: Text(
                  "Modules for this Semester",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green),
                ),
              ),
               Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(color: Colors.greenAccent),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(color: Colors.yellow),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Assignment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'College',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
