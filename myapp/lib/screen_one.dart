import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class screen_one extends StatefulWidget {
  const screen_one({super.key});

  @override
  State<screen_one> createState() => _screen_oneState();
}

class _screen_oneState extends State<screen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) {
                    return App();
                  }));
                });
              }),
              child: Text(
                "Back to home page",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
