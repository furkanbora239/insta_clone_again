import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_clone_again/body/body.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: const Icon(Icons.camera_alt_outlined),
          actions: const [
            Icon(Icons.live_tv),
            SizedBox(
              width: 10,
            ),
            Icon(CupertinoIcons.paperplane),
            SizedBox(
              width: 10,
            )
          ],
          titleTextStyle: const TextStyle(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text('Instagram'),
        ),
        body: const Body(),
      ),
    );
  }
}
