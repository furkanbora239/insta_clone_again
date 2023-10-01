import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                        'name ',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        CupertinoIcons.checkmark_seal_fill,
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
