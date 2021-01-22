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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Image.network("https://www.pakutaso.com/shared/img/thumb/tomneko12151314_TP_V.jpg")
            ),
            Row(
              children:[ Text("【公式】カマキリVS乾電池",
                style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                Container(
                    child:
                    Icon(Icons.arrow_back_ios, ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
