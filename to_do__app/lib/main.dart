import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light & Dark Mode',
      theme: ThemeData.light(),
      // Set the default light theme
      darkTheme: ThemeData.dark(),
      // Set the dark theme
      themeMode: ThemeMode.system,
      // Use system theme mode (light/dark)
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  Future<String> evenOrOdd() async {
    var data = "";
    var a = 10;
    var b = 20;
    var c = a + b;
    if (c % 2 == 0) {
      data = "even";
    } else {
      data = "odd";
    }
    return Future.delayed(Duration(seconds: 2), () => data,);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light & Dark Mode'),
      ),
      body: Center(
          child: Container(
          child:FutureBuilder(
            builder:(context, snapshot) {
              var data = snapshot.data;
              return Text("$data");
            },
            future: evenOrOdd(),
          ),
      )),
    );
  }
}
