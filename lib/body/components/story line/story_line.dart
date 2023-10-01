import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:insta_clone_again/body/components/story%20line/story%20line%20components/story_circle.dart';
import 'package:http/http.dart' as http;
import 'package:insta_clone_again/models/random_user_model.dart';

class StoryLine extends StatelessWidget {
  const StoryLine({super.key});

  static List userNameList = [];
//TODO: list meselesini biraz karıştırdım yarın ya daha iyi bir yol bul yada burayı düzelt
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
              return const StoryCircle(
                userName: 'Your Story',
              );
            } else {
              // ignore: no_leading_underscores_for_local_identifiers
              int _index = index - 1;
              print(_index);
              if (userNameList.elementAtOrNull(_index) == null) {
                return FutureBuilder(
                  future: getRandomUser(),
                  builder: (context, snapshot) {
                    userNameList.add('furkan_m_bora');
                    if (snapshot.hasData) {
                      userNameList[_index] =
                          snapshot.data!.results!.first.login!.username;

                      return StoryCircle(userName: userNameList[_index]);
                    } else {
                      return StoryCircle(userName: 'furkan_m_bora');
                    }
                  },
                );
              } else {
                return StoryCircle(userName: userNameList[_index]);
              }
            }
          }),
    );
  }
}

Future<RandomUser> getRandomUser() async {
  final res = await http.get(Uri.parse('https://randomuser.me/api/'));

  RandomUser user = RandomUser.fromJson(jsonDecode(res.body));
  return user;
}
