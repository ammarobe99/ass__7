import 'package:flutter/material.dart';
import 'screen_one.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("wlc to search page"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Divider(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text("enter your email"),
                  suffix: Text("email123@gmail.com"),
                  contentPadding: EdgeInsets.symmetric(horizontal: 75),
                  hintText: "enter"),
              cursorWidth: 3,
              cursorColor: Colors.black,
              cursorRadius: Radius.circular(70),
            ),
            Divider(
              height: 100,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  label: Text("enter your password"),
                  suffix: Text("123"),
                  contentPadding: EdgeInsets.symmetric(horizontal: 75),
                  hintText: "enter"),
              cursorWidth: 3,
              cursorColor: Colors.black,
              cursorRadius: Radius.circular(70),
            ),
            Divider(
              height: 50,
            ),
            ElevatedButton.icon(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return screen_one();
                  }));
                }),
                icon: Icon(Icons.login),
                label: Text("login")),
          ],
        ));
  }
}
