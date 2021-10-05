import 'package:flutter/material.dart';

class Job {
  String img;
  String? title;
  String? location;
  String? timeType;
  bool? isFavorite;
  String? uploadDate;

  Job({
    required this.img,
    this.title,
    this.location,
    this.timeType,
    this.isFavorite,
    this.uploadDate,
  });
}
