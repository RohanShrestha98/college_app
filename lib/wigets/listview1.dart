import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          width: 8,
        ),
        buildCard(),
        SizedBox(
          width: 8,
        ),
        buildCard1(),
        SizedBox(
          width: 8,
        ),
        buildCard2(),
        SizedBox(
          width: 8,
        ),
        buildCard3(),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}

buildCard() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      child: Center(
          child: Text(
        "DataBase Lecture",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
      )),
      width: 150,
      color: Colors.green[400],
    ),
  );
}

buildCard1() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      child: Center(
          child: Text(
        "ISA Tutorial",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
      )),
      width: 150,
      color: Colors.green[400],
    ),
  );
}

buildCard2() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      child: Center(
          child: Text(
        "Embeded Workshop",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
      )),
      width: 170,
      color: Colors.green[400],
    ),
  );
}

buildCard3() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      child: Center(
          child: Text(
        "ISA Lecture",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
      )),
      width: 150,
      color: Colors.green[400],
    ),
  );
}
