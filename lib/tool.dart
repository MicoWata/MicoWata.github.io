import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';

GlobalKey welcome = GlobalKey();
GlobalKey preface = GlobalKey();
GlobalKey journey = GlobalKey();
GlobalKey school = GlobalKey();
GlobalKey prestige = GlobalKey();

String en = 'assets/en.json';
String fr = 'assets/fr.json';
String language = fr;

enum Languages {
  en('assets/en.json'),
  fr('assets/fr.json');

  const Languages(this.value);
  final String value;
}

Languages lang = Languages.fr;

Padding titleWidget(text) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Text(
      text,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}

double displayWidth(context) {
  return MediaQuery.of(context).size.width;
}

double displayHeight(context) {
  return MediaQuery.of(context).size.height;
}

double relativeWidth(number, context) {
  return MediaQuery.of(context).size.width / number;
}

double relativeHeight(number, context) {
  return MediaQuery.of(context).size.width / number;
}

double width(percentage, context) {
  return MediaQuery.of(context).size.width * percentage;
}

double height(percentage, context) {
  return MediaQuery.of(context).size.height * percentage;
}

Future<Map<String, dynamic>> readJson(String filePath) async {
  try {
    final String jsonString = await rootBundle.loadString(filePath);
    final data = jsonDecode(jsonString);
    return data;
  } catch (e) {
    print('Error reading JSON: $e');
    return {};
  }
}

// Example Usage:
Future<void> example() async {
  final data = await readJson('assets/text.json');
  print(data);
}
