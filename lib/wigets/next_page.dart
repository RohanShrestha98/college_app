import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true; // Remove to suppress visual layout
  runApp(const NextPage());
}

final _key1 = GlobalKey();
final _key2 = GlobalKey();

class NextPage extends StatelessWidget {
  const NextPage({key});

  get width => null;

  BuildContext? get context => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Change to buildColumn() for the other column example
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"))),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/1.jpg"))),
              ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildRow() =>
  //     // #docregion Row
  //     Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

  //       children: [
  //         Image.asset("assets/images/1.jpg",),
  //         Image.asset("assets/images/2.jpg",width: MediaQuery.of(context!).size.width * 0.25,),
  //         Image.asset("assets/images/3.jpg",width: MediaQuery.of(context!).size.width * 0.25,),
  //       ],
  //     );
  // #enddocregion Row

  // #enddocregion Column
}
