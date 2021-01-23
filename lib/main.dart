import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

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
                        //todo
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
              children:[ Text("【公式】カマキリ VS 乾電池",
                style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                Container(
                  padding: EdgeInsets.only(left: 70),
                    child:
                    SizedBox(
                      width: 10,
                      child: FlatButton(
                          child: Icon(Icons.keyboard_arrow_down, ),
                      onPressed: () {
                      //todo
                      },),
                    ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child:
                  Text("異種格闘技戦チャンネル",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child:
                  Text("視聴回数100万回"),
                ),
              ],
            ),
            Row( //この範囲全体のRow
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: FlatButton(
                        child: Icon(Icons.thumb_up),
                        onPressed: () {
                        //todo
                        },
                      ),
                    ),
                    Text("95万"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: FlatButton(
                        child: Icon(Icons.thumb_down),
                        onPressed: () {
                          //todo
                        },
                      ),
                    ),
                    Text("5万"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 115),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: FlatButton(
                          child: Icon(Icons.add),
                          onPressed: () {
                            //todo
                          },
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: FlatButton(
                          child: Icon(Icons.subdirectory_arrow_right),
                          onPressed: () {
                            //todo
                          },
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: FlatButton(
                          child: Icon(Icons.flag),
                          onPressed: () {
                            //todo
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child:
              ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading:
                    Image.network("https://www.pakutaso.com/shared/img/thumb/tomcat1582_TP_V.jpg"),
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
