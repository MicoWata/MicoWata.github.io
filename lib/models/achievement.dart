import 'package:hello/tool.dart';
import 'dart:async';

class Achievement {
  String time;
  String title;
  String description;
  List<String> feats;
  List<String> images;
  String link;

  int image = 0;

  Achievement({
    required this.time,
    required this.title,
    required this.feats,
    required this.description,
    required this.images,
    required this.link,
  });

  factory Achievement.fromJson(Map<String, dynamic> json) {
    return Achievement(
      time: json['time'] as String,
      title: json['title'] as String,
      feats: List<String>.from(json['feats'] as List<dynamic>),
      description: json['description'] as String,
      images: List<String>.from(json['images'] as List<dynamic>),
      link: json['link'] as String,
    );
  }

  String get img => images[image];

  static Future<List<Achievement>> fill() async {
    try {
      final jsonData = await readJson(language);
      final List<dynamic>? achievementsJson =
          jsonData['achievements'] as List<dynamic>?;

      if (achievementsJson == null) {
        return [];
      }

      return achievementsJson
          .map((item) => Achievement.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error filling achievements: $e');
      return [];
    }
  }
}
