import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({
    super.key,
    required this.userName,
    required this.image,
  });

  final String userName;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          StoryImage(
            image: image,
          ),
          const SizedBox(height: 4),
          StoryName(
            userName: userName,
          )
        ],
      ),
    );
  }
}

class StoryName extends StatelessWidget {
  const StoryName({
    super.key,
    required this.userName,
  });
  final String userName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63,
      child: Text(
        userName.length > 10 ? '${userName.substring(0, 10)}...' : userName,
        softWrap: false,
        style: const TextStyle(
          fontSize: 12,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class StoryImage extends StatelessWidget {
  const StoryImage({
    super.key,
    required this.image,
  });

  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: 64,
      width: 64,
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
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[300],
            foregroundImage: image,
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
