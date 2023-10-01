import 'package:flutter/material.dart';
import 'package:insta_clone_again/body/components/story%20line/story%20line%20components/story_circle.dart';

class StoryLine extends StatelessWidget {
  const StoryLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [StoryCircle()],
    );
  }
}
