import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [StoryImage(), SizedBox(height: 4), StoryName()],
      ),
    );
  }
}

class StoryName extends StatelessWidget {
  const StoryName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'mahmut_tuncer',
      style: TextStyle(fontSize: 12),
      overflow: TextOverflow.fade,
    );
  }
}

class StoryImage extends StatelessWidget {
  const StoryImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.purple[900]!,
            Colors.red,
            Colors.orange,
            Colors.yellow
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          shape: BoxShape.circle),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[300],
            foregroundImage:
                const NetworkImage('https://picsum.photos/70?random=1'),
            child: const Icon(
              Icons.person,
              size: double.infinity,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
