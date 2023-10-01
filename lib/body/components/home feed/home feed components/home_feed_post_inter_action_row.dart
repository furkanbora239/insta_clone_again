import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFeedPostInterActionRow extends StatelessWidget {
  const HomeFeedPostInterActionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InterActionElements(
              iconData: CupertinoIcons.heart,
            ),
            InterActionElements(iconData: Icons.mode_comment_outlined),
            InterActionElements(iconData: CupertinoIcons.paperplane)
          ],
        ),
        InterActionElements(iconData: Icons.bookmark_border)
      ],
    );
  }
}

class InterActionElements extends StatelessWidget {
  const InterActionElements({
    super.key,
    required this.iconData,
  });

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Icon(iconData),
    );
  }
}
