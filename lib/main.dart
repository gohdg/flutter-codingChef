import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('Toast'),
          style: TextButton.styleFrom(
              primary: Colors.white, backgroundColor: Colors.blue),
        ),
      ),
    );
  }
}

// Toast용 함수 생성
void flutterToast() {
  Fluttertoast.showToast(
    msg: 'Flutter',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    textColor: Colors.white,
    fontSize: 20.0,
    toastLength: Toast.LENGTH_SHORT,
  );
}
