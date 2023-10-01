import 'package:flutter/material.dart';
import 'package:insta_clone_again/body/components/home%20feed/home_feed.dart';
import 'package:insta_clone_again/body/components/story%20line/story_line.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              Divider(height: 1, color: Colors.grey[800]),
              const StoryLine(),
              Divider(height: 1, color: Colors.grey[800]),
            ],
          );
        } else {
          return const HomeFeed();
        }
      },
    );
  }
}
