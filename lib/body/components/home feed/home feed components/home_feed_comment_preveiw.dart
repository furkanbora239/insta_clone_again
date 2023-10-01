import 'package:flutter/material.dart';

class HomeFeedCommentPreveiw extends StatelessWidget {
  const HomeFeedCommentPreveiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 8.5,
                  foregroundImage:
                      NetworkImage('https://picsum.photos/30?random=1')),
              SizedBox(width: 6.5),
              Text.rich(TextSpan(
                  text: 'Liked by ',
                  children: [
                    TextSpan(
                        text: 'user_name ',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(text: 'and '),
                    TextSpan(
                        text: '44,686 others',
                        style: TextStyle(fontWeight: FontWeight.w600))
                  ],
                  style: TextStyle(fontSize: 13)))
            ],
          ),
          SizedBox(height: 6),
          Text.rich(TextSpan(style: TextStyle(fontSize: 13), children: [
            TextSpan(
                text: 'name ', style: TextStyle(fontWeight: FontWeight.w600)),
            TextSpan(
                text:
                    'The game in Japan was amazing and I want to share some photos')
          ]))
        ],
      ),
    );
  }
}
