import 'package:flutter/material.dart';
import 'package:hello/tool.dart';
import 'package:hello/models/course.dart';
import 'package:hello/widgets/animated.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class School extends StatefulWidget {
  const School({super.key});

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  List<Course> _courses = [];

  @override
  void initState() {
    super.initState();
    _loadCourses();
  }

  Future<void> _loadCourses() async {
    final loadedCourses = await Course.fill();
    if (mounted) {
      setState(() {
        _courses = loadedCourses;
      });
    }
  }

  Container _card(
    Course course,
    BuildContext context,
    ColorScheme theme,
    double ratio,
  ) {
    final chapter = TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.outline,
      //fontWeight: FontWeight.bold,
    );
    final category = TextStyle(
      fontSize: 18,
      //color: Theme.of(context).colorScheme.outlineVariant,
      //fontWeight: FontWeight.bold,
    );
    final small = TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.tertiary,
      //fontWeight: FontWeight.bold,
    );

    var score = '${course.score}%';
    if (course.score == 0) {
      score = "...";
    }
    var average = '${course.average}%';
    if (course.average == 0) {
      average = "...";
    }
    var median = '${course.median}%';
    if (course.median == 0) {
      median = "...";
    }

    return Container(
      padding: const EdgeInsets.all(32),
      margin: const EdgeInsets.all(8),
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height / 2,
      ),
      decoration: BoxDecoration(
        color: theme.outlineVariant,
        //border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: Text(course.name, style: chapter)),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Text(
                  lang == Languages.fr ? 'Résultat' : 'Grade',
                  style: category,
                ),
                Spacer(),
                Text(score, style: category),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      lang == Languages.fr ? 'Moyenne' : 'Average',
                      style: small,
                    ),
                    Spacer(),
                    Text(average, style: small),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      lang == Languages.fr ? 'Médiane' : 'Median',
                      style: small,
                    ),
                    Spacer(),
                    Text(median, style: small),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    lang == Languages.fr ? "Matière" : 'Subjects',
                    style: category,
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(flex: 3, child: Text(course.content, style: small)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final title = lang == Languages.fr ? "Formation" : 'Scholarship';
    final space = MediaQuery.of(context).size.width / 300;
    int spaceInt = space.toInt();

    if (spaceInt < 1) {
      spaceInt = 1;
    }
    double ratio = 2.6;

    if (space < 2) {
      ratio = 1.2;
    }
    if (space < 1.6) {
      ratio = 2.0;
    }

    final courseWidgets =
        _courses.map((course) => _card(course, context, theme, ratio)).toList();

    Future<void> launchurl(String urlstring) async {
      final Uri url = Uri.parse(urlstring);
      if (!await launchUrl(url)) {
        throw Exception('could not launch $url');
      }
    }

    Padding banner() {
      return Padding(
        padding: EdgeInsets.all(relativeWidth(10000, context)),
        child: Container(
          margin: const EdgeInsets.all(8),
          //constraints: BoxConstraints(
          //  //minHeight: MediaQuery.of(context).size.height / 2,
          //),
          decoration: BoxDecoration(
            color: theme.outlineVariant,
            //border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(32),
          //color: theme.surfaceContainerHighest,
          //height: 600,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Text(
                  lang == Languages.fr
                      ? 'AEC en développement logiciel'
                      : 'Scholarship in software development',
                  style: TextStyle(fontSize: 20),
                  //textAlign: TextAlign.,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Text(
                  'Collège de Maisonneuve',
                  style: TextStyle(fontSize: 20, color: theme.outline),

                  //textAlign: TextAlign.center,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                //child: Text(
                //  'Lien',
                //  style: TextStyle(fontSize: 20),
                //  textAlign: TextAlign.right,
                //),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      flex: 1,
                      child:
                          MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                              ? Row(
                                children: [
                                  Text(
                                    lang == Languages.fr ? "Lien " : 'Link ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: theme.outline,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: theme.outline,
                                    size: width(0.02, context),
                                  ),
                                ],
                              )
                              : Text(""),
                    ),
                    //SizedBox(width: 32),
                    //Spacer(),
                    Flexible(
                      flex: 1,
                      child: JumpingButton(
                        //onPressed: () {},
                        onPressed:
                            () => launchurl(
                              "https://fc.cmaisonneuve.qc.ca/formations/developpement-de-logiciels/#information-generale-1-tab",
                            ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              constraints: BoxConstraints(
                                minWidth: height(0.06, context),
                                //maxWidth: 50,
                                minHeight: height(0.06, context),
                                //minHeight: 50,
                                //maxHeight: 50,
                              ),
                              //width: 50,
                              //height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
                                  color: theme.outline,
                                ),
                                //borderRadius: BorderRadius.circular(8),
                                color: theme.outline,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/college1.png',
                                  ),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                  colorFilter: ColorFilter.mode(
                                    theme.secondaryContainer,
                                    BlendMode.color,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //onPressed: () => launchurl(adress),
                        //label: Text("HELLO"),
                        //padding: EdgeInsets.all(16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      key: school,
      width: width(1.0, context),
      color: theme.surfaceContainerHigh,
      child: Padding(
        padding: EdgeInsets.all(relativeWidth(48, context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleWidget(title),
            SizedBox(height: 32),
            banner(),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: spaceInt,
                childAspectRatio:
                    2 / ratio, // Adjust this ratio to control item size
                //crossAxisSpacing: 10,
                //mainAxisSpacing: 10,
              ),
              //padding: const EdgeInsets.all(20),
              itemCount: courseWidgets.length,
              itemBuilder: (context, index) => courseWidgets[index],
            ),
          ],
        ),
      ),
    );
  }
}
