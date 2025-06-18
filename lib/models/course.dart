import 'dart:async';
import 'package:hello/tool.dart';

class Course {
  String name;
  int score;
  int average;
  int median;
  String content;

  Course({
    required this.name,
    required this.score,
    required this.average,
    required this.median,
    required this.content,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      name: json['name'] as String,
      score: json['score'] as int,
      average: json['average'] as int,
      median: json['median'] as int,
      content: json['content'] as String,
    );
  }

  static Future<List<Course>> fill() async {
    try {
      final jsonData = await readJson(language);
      final List<dynamic>? coursesJson = jsonData['courses'] as List<dynamic>?;

      if (coursesJson == null) {
        // Handle the case where 'courses' key might be missing or null
        print('Warning: "courses" data not found in JSON or is null.');
        return [];
      }

      return coursesJson
          .map((item) => Course.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error filling courses: $e');
      return []; // Return an empty list or throw an error as appropriate
    }
  }
}

  //final mathLogic = CourseResult.fromPercentages(
  //  courseName: 'Logique mathématique',
  //  scorePercentage: 87,
  //  averagePercentage: 66,
  //  medianPercentage: 77,
  //);
  //
  //print(mathLogic);
  //
  //// Display in Flutter
  //Widget buildResultWidget() {
  //  return Container(
  //    padding: EdgeInsets.all(16),
  //    decoration: BoxDecoration(
  //      border: Border.all(color: Colors.grey),
  //      borderRadius: BorderRadius.circular(8),
  //    ),
  //    child: Column(
  //      crossAxisAlignment: CrossAxisAlignment.start,
  //      children: [
  //        Text(
  //          mathLogic.courseName,
  //          style: TextStyle(
  //            fontSize: 18,
  //            fontWeight: FontWeight.bold,
  //          ),
  //        ),
  //        SizedBox(height: 8),
  //        Text('Résultat: ${_formatPercentage(mathLogic.score)}'),
  //        Text('Moyenne: ${_formatPercentage(mathLogic.average)}'),
  //        Text('Médiane: ${_formatPercentage(mathLogic.median)}'),
  //      ],
  //    ),
  //  );
  //}
  //
//Formation
//
//  nom : logique mathématique
//
//  résultat : 87%
//  moyenne  : 66%
//  médianne : 77%
//
//  programmation débutant
//
//  résultat : 88%
//  moyenne  : 69%
//  médianne : 79%
//
//  systèmes d'exploitation
//
//  résultat : 98%
//  moyenne  : 77%
//  médianne : 93%
//
//
//  programmation intermédiaire
//
//  résultat : 90%
//  moyenne  : 69%
//  médianne : 73%
//
//  base de données
//
//  résultat : 95%
//  moyenne  : 74%
//  médianne : 90%
//
//  développement web
//
//  résultat : 96%
//  moyenne  : 76%
//  médianne : 91%
//
//
//  algorithmes et modélisation
//
//  résultat : %
//  moyenne  : %
//  médianne : %
//
//  développement de systèmes
//
//  résultat : 95%
//  moyenne  : 78%
//  médianne : 88%
//
//  services web
//
//  résultat : %
//  moyenne  : %
//  médianne : %
//
//  développement d'applications
//
//  résultat : %
//  moyenne  : %
//  médianne : %
//
//
//https://fc.cmaisonneuve.qc.ca/formations/developpement-de-logiciels/#grille-de-cours-2-tab
//
