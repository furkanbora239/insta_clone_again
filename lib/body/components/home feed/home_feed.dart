import 'package:flutter/material.dart';
import 'package:insta_clone_again/body/components/home%20feed/home%20feed%20components/home_feed_comment_preveiw.dart';
import 'package:insta_clone_again/body/components/home%20feed/home%20feed%20components/home_feed_post_inter_action_row.dart';
import 'package:insta_clone_again/body/components/home%20feed/home%20feed%20components/home_feed_user_row.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeFeedUserRow(),
        SizedBox(
            width: double.infinity,
            child: Image.network("https://picsum.photos/500?random=1")),
        const HomeFeedPostInterActionRow(),
        const HomeFeedCommentPreveiw()
      ],
    );
  }
}
