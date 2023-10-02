import 'dart:convert';
import 'package:insta_clone_again/models/random_user_model.dart';
import 'package:http/http.dart' as http;

mixin RandomUserManage {
  static RandomUser storyLineUserList = RandomUser();

  Future<RandomUser> getRandomUser() async {
    final res = await http.get(Uri.parse('https://randomuser.me/api/'));

    RandomUser user = RandomUser.fromJson(jsonDecode(res.body));

    user.results!.addAll(user.results!);
    return user;
  }

  Future<RandomUser> getStoryLineUserList() async {
    if (storyLineUserList.results == null) {
      final res =
          await http.get(Uri.parse('https://randomuser.me/api/?results=19'));

      RandomUser user = RandomUser.fromJson(jsonDecode(res.body));

      storyLineUserList = user;

      return storyLineUserList;
    } else {
      return storyLineUserList;
    }
  }
}
