import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade300,
      ),
      body: Row(
        children: [
          Expanded(
              flex: 5,
              child: Image.network(
                  'https://www.svz.com/wp-content/uploads/2018/05/Mango.jpg')),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text("2"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text("3"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("click"),
        backgroundColor: Colors.amber[300],
      ),
    );
  }
}
