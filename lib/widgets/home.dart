import 'dart:convert';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello/models/page.dart';
import 'package:hello/widgets/journey.dart';
import 'package:hello/widgets/preface.dart';
import 'package:hello/widgets/prestige.dart';
import 'package:hello/widgets/welcome.dart' show Welcome;
import 'package:hello/widgets/school.dart' show School;
//import 'package:hello/widgets/mastery.dart' show Mastery;
import 'bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //static List<Item> items = [];

  Future<void> loadData() async {
    //final String jsonString = await rootBundle.loadString('assets/text.json');
    //final data = json.decode(jsonString);

    setState(() {
      //items =
      //(data['items'] as List).map((item) => Item.fromJson(item)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    imageCache.clear();
    //loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Welcome(),
              Preface(),
              Journey(),
              Prestige(),
              //Mastery(),
              School(),
            ],
          ),
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //  onPressed: () {},
      //  tooltip: 'Contacter',
      //  child: const Icon(Icons.mail),
      //),
    );
  }
}
