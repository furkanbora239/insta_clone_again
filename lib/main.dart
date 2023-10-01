import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
            leading: const Icon(
              CupertinoIcons.camera,
            ),
            actions: const [
              Icon(Icons.live_tv),
              SizedBox(
                width: 18,
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
            title: Text(
              'Instagram',
              style: GoogleFonts.dancingScript(fontSize: 28),
            )),
        body: const Body(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          iconSize: 35,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_filled),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                ),
                activeIcon: Icon(CupertinoIcons.search, weight: 2),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart),
                activeIcon: Icon(CupertinoIcons.heart_fill),
                label: ''),
            BottomNavigationBarItem(icon: CircleAvatar(radius: 17), label: ''),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
