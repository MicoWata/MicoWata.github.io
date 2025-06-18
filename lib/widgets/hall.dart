import 'package:flutter/material.dart';
import 'package:hello/tool.dart';
import 'package:hello/models/skill.dart';

class Hall extends StatelessWidget {
  const Hall({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final list = Skill.fill();
    final skills =
        list
            .map(
              (course) => Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.grey),
                  color: theme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      course.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      course.text,
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
    final title = "Atouts";

    return Container(
      width: width(1.0, context),
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            titleWidget(title),
            SizedBox(height: 48),
            ...skills, // spread operator to add all skills
          ],
        ),
      ),
    );
  }
}
