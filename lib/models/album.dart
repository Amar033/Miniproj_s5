import 'package:flutter/material.dart';

class Album {
  Duration? duration;
  String albumId;
  String? albumName;
  String? artistName;
  List? songName;
  String? songImage;
  String? artistImage;
  Color? songColor;

  Album(
      {this.duration,
      required this.albumId,
      this.albumName='',
      this.artistName,
      this.songName,
      this.songImage,
      this.artistImage,
      this.songColor});
}
