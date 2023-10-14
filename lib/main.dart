import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

//now we are creating a stateless widget, and hence, as it's a class so it makes our 
//code dry, means, DRY -> Don't repeat yourself
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              child: Text("1"),
              color: Colors.cyan,
              padding: EdgeInsets.all(20.0),
        ),
          ),
          Expanded(
            child: Container(
              child: Text("2"),
              color: Colors.amber,
              padding: EdgeInsets.all(20.0),
            ),
          ),
          Expanded(
            child: Container(
              child: Text("3"),
              color: Colors.orangeAccent,
              padding: EdgeInsets.all(20.0),
            ),
          ),]
      ),



      floatingActionButton: FloatingActionButton(onPressed: null,child: Text("click"),backgroundColor: Colors.green,),
    );
  }
}


