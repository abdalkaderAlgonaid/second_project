import 'package:flutter/material.dart';

Color c = Colors.white;
Color b = Colors.yellow;
SizedBox sbw = SizedBox(
  width: 20,
);
SizedBox sbh = SizedBox(
  height: 20,
);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void fun1() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            actions: [
              Icon(Icons.info),
              PopupMenuButton<int>(
                itemBuilder: (context) => [],
                color: Colors.white,
                elevation: 2,
              )
            ],
            leading: Icon(
              Icons.keyboard_backspace_sharp,
              size: 30,
            ),
            title: Text("Container "),
          ),
          body: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 10,
                  ),
                  width: 400,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "I am containar",
                    style: TextStyle(color: Colors.white),
                  ))),
              Container(
                margin: EdgeInsets.only(
                  left: 5,
                  top: 10,
                ),
                width: 400,
                height: 50,
                color: Colors.blue,
                child: Center(
                    child: Text("Hai,I am Slanting",
                        style: TextStyle(color: Colors.white, fontSize: 30))),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 5,
                  top: 10,
                ),
                width: 400,
                height: 50,
                color: Colors.blue,
                child: Center(
                    child: Text("I am also Slanting,but see my edges",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 50, top: 150, bottom: 100, right: 50),
                width: 300,
                height: 300,
                color: Colors.blue,
                padding: EdgeInsets.all(50),
                child: Container(
                  padding: EdgeInsets.all(50),
                  color: Colors.yellow,
                  child: Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(30),
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
