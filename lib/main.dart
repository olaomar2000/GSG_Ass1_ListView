import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView1(),
  ));
}

class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext con, int item) {
          return ListTile(
            leading: Icon(Icons.list),
            trailing: Text('GFG'),
            title: Text('ListItem $item'),
          );
        },
      ),
    );
  }
}

class ListView1 extends StatelessWidget {
  List name = ['bike', 'boat', 'bus', 'car', 'railway', 'run'];

  List icons = [
    Icons.directions_bike_outlined,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViews'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (BuildContext con, int item) {
          return Card(
            child: ListTile(
              leading: Icon(icons[item]),
              title: Text(name[item]),
            ),
          );
        },
      ),
    );
  }
}