import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_box_rounded, color: Colors.red,),
          title: Text("PowTube"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                  width: 40,
                  child: FlatButton(
                    child: Icon(Icons.search),
                    onPressed: () {
                    //  TODO
                    },
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                width: 40,
                  child: FlatButton(
                      child: Icon(Icons.more_vert),
                    onPressed: () {
                        //TODO
                    },
                  ),
              ),
            ),
          ],
        ),
        body: Container(
            height: 400.0,
            width: double.infinity,
            color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  child:

                  Image.network("https://cdn.pixabay.com/photo/2016/01/19/17/41/friends-1149841_1280.jpg"),
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
