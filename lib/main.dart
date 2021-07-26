import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  // This widget is the root of your application.
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      onPressed: (){
                        setState(() {
                          counter++;
                          print('$counter');
                        });
                      },
                      child: Icon(Icons.add),
                  ),
                  SizedBox(

                    width: 20.0,
                  ),
                  FloatingActionButton(
                    onPressed: (){
                      setState(() {
                        counter--;
                        print('$counter');
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}
