import 'package:flutter/material.dart';
class MyDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: (){
      query="";
    },
     icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {}

  @override
  Widget buildResults(BuildContext context) =>Container();

  @override
  Widget buildSuggestions(BuildContext context) =>Container();
}

