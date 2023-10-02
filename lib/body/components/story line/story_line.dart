import 'package:flutter/material.dart';
import 'package:insta_clone_again/body/components/story%20line/story%20line%20components/story_circle.dart';
import 'package:insta_clone_again/mixins/profile_picture.dart';
import 'package:insta_clone_again/mixins/random_user_manage_mixin.dart';

class StoryLine extends StatelessWidget with RandomUserManage, ProfilePicture {
  const StoryLine({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98,
      child: ListView.builder(
          cacheExtent: 20,
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
              return StoryCircle(
                userName: 'Your Story',
                image: profilePicture,
              );
            } else {
              // ignore: no_leading_underscores_for_local_identifiers
              int _index = index - 1;
              if (RandomUserManage.storyLineUserList.results == null) {
                return FutureBuilder(
                  future: getStoryLineUserList(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return StoryCircle(
                          userName:
                              snapshot.data!.results![_index].login!.username!,
                          image: NetworkImage(snapshot
                              .data!.results![_index].picture!.medium!));
                    } else {
                      return StoryCircle(
                        userName: 'furkan_m_bora',
                        image: profilePicture,
                      );
                    }
                  },
                );
              } else {
                return StoryCircle(
                  userName: RandomUserManage
                      .storyLineUserList.results![_index].login!.username!,
                  image: NetworkImage(RandomUserManage
                      .storyLineUserList.results![_index].picture!.medium!),
                );
              }
            }
          }),
    );
  }
}
