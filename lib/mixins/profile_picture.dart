import 'package:flutter/material.dart';

mixin ProfilePicture {
  static const NetworkImage _profilePicture =
      NetworkImage('https://picsum.photos/500?random=1');
  NetworkImage get profilePicture => _profilePicture;
}
