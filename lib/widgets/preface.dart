import 'package:flutter/material.dart';
import 'package:hello/tool.dart';

class Preface extends StatefulWidget {
  Preface({super.key});

  @override
  State<Preface> createState() => _PrefaceState();
}

class _PrefaceState extends State<Preface> {
  final title = "Introduction";
  List<String> list = [];

  Future<void> _loadAchievements() async {
    final jsonData = await readJson(language);
    final List<dynamic>? achievementsJson =
        jsonData['introduction'] as List<dynamic>?;

    if (mounted) {
      setState(() {
        list = achievementsJson!.map((item) => (item as String)).toList();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadAchievements();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final sections =
        list
            .map(
              (section) => Container(
                width: double.infinity, // Make container take full width
                alignment: Alignment.centerLeft, // Align content to the left
                //padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(16),
                //decoration: BoxDecoration(color: theme.outline),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      section,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList();

    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height - kToolbarHeight,
      ),
      key: preface,
      width: width(1.0, context),
      //height: MediaQuery.of(context).size.height - kToolbarHeight,
      color: theme.surfaceContainer,
      //alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 48),
        child: Column(
          children: [
            titleWidget(title),
            SizedBox(height: 32),
            //Padding(
            //  padding: EdgeInsets.all(16),
            //  child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [...sections],
            ),
            //),
          ],
        ),
      ),
    );
  }
}
