import 'package:flutter/material.dart';
import 'package:hello/tool.dart';
import 'package:hello/models/story.dart';

class Journey extends StatefulWidget {
  const Journey({super.key});

  @override
  State<Journey> createState() => _JourneyState();
}

class _JourneyState extends State<Journey> {
  List<Story> list = [];

  Future<void> _loadAchievements() async {
    final loadedAchievements = await Story.fill();

    if (mounted) {
      setState(() {
        list = loadedAchievements;
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
    final chapter = TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.secondary,
    );
    final category = TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.outline,
    );
    final small = TextStyle(fontSize: 16);
    final theme = Theme.of(context).colorScheme;

    List<Row> line(Story story) {
      List<Row> rows = [];

      for (int i = 0; i < story.languages.length; i++) {
        rows.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: Text(story.languages[i])),
              SizedBox(width: 8),
              Expanded(flex: 3, child: Text(story.tools[i])),
              SizedBox(width: 8),
              Expanded(flex: 5, child: Text(story.skills[i])),
            ],
          ),
        );
        rows.add(Row(children: [SizedBox(height: 24)]));
      }

      return rows;
    }

    final stories =
        list
            .map(
              (story) => Card(
                margin: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,

                            //child: FittedBox(
                            //  //child: FittedBox(
                            //  fit: BoxFit.scaleDown,
                            //alignment: Alignment.centerLeft,
                            child: Text(
                              story.title,
                              style: chapter,
                              //textAlign: TextAlign.left,
                              //overflow: TextOverflow.ellipsis,
                            ),
                            //),
                          ),

                          //Spacer(),
                          Expanded(
                            flex: 2,
                            //child: FittedBox(
                            //  fit: BoxFit.scaleDown,
                            child: Text(
                              story.time,
                              style: chapter,
                              textAlign: TextAlign.right,
                              textScaler: TextScaler.linear(1),
                            ),
                            //),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            //fit: FlexFit.loose,
                            flex: 2,
                            child: Text(
                              lang == Languages.fr ? 'Langages' : 'Languages',
                              style: category,
                              //textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            //fit: FlexFit.loose,
                            flex: 3,
                            child: Text(
                              lang == Languages.fr ? 'Outils' : 'Tools',
                              style: category,
                              //textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            //fit: FlexFit.tight,
                            flex: 5,
                            child: Text(
                              lang == Languages.fr ? 'Aptitudes' : 'Skills',
                              style: category,
                              //textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Column(children: line(story)),
                    ],
                  ),
                ),
              ),
            )
            .toList();

    final title = lang == Languages.fr ? "Parcours" : "Journey";

    return Container(
      key: journey,
      width: width(1.0, context),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [titleWidget(title), SizedBox(height: 32), ...stories],
        ),
      ),
    );
  }
}
