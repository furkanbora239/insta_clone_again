import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeFeedUserRow(),
        Image.network("https://picsum.photos/500?random=1"),
        const Row(
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
        )
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

class HomeFeedUserRow extends StatelessWidget {
  const HomeFeedUserRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                foregroundImage:
                    NetworkImage('https://picsum.photos/30?random=1'),
              ),
              SizedBox(width: 7),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'name',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.check_circle_rounded,
                        size: 12,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Text(
                    'city, country',
                    style: TextStyle(fontSize: 11),
                  )
                ],
              )
            ],
          ),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
