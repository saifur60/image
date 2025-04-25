import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  mysnackbar(msg, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              mysnackbar("Search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.brown,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        height: 500,
        width: 300,
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(120, 50, 50, 20),
        child: Image(image: AssetImage('assets/flutter.jpg')),
      ),
    );
  }
}
