import 'package:hello/tool.dart';

class Story {
  String time;
  String title;
  List<String> tools;
  List<String> skills;
  List<String> languages;

  Story({
    required this.time,
    required this.title,
    required this.tools,
    required this.skills,
    required this.languages,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      time: json['time'] as String,
      title: json['title'] as String,
      languages: List<String>.from(json['languages'] as List<dynamic>),
      tools: List<String>.from(json['tools'] as List<dynamic>),
      skills: List<String>.from(json['skills'] as List<dynamic>),
    );
  }
  static Future<List<Story>> fill() async {
    final jsonData = await readJson(language);
    final List<dynamic>? achievementsJson =
        jsonData['stories'] as List<dynamic>?;

    if (achievementsJson == null) {
      return [];
    }

    return achievementsJson
        .map((item) => Story.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
