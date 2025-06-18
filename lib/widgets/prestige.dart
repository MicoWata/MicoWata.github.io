import 'package:flutter/material.dart';
import 'package:hello/tool.dart';
import 'package:hello/models/achievement.dart';
import 'package:hello/widgets/hoverable.dart';
import 'package:url_launcher/url_launcher.dart';

class Prestige extends StatefulWidget {
  const Prestige({super.key});

  @override
  State<Prestige> createState() => _PrestigeState();
}

class _PrestigeState extends State<Prestige> {
  List<Achievement> list = [];

  Future<void> _loadAchievements() async {
    final loadedAchievements = await Achievement.fill();

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
      color: Theme.of(context).colorScheme.tertiary,
      //fontWeight: FontWeight.bold,
    );
    final category = TextStyle(
      fontSize: 18,
      //fontWeight: FontWeight.bold,
    );
    final small = TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.onTertiaryContainer,
      decoration: TextDecoration.underline,

      //fontWeight: FontWeight.bold,
    );
    final theme = Theme.of(context).colorScheme;

    Future<void> launchurl(String urlstring) async {
      final Uri url = Uri.parse(urlstring);
      if (!await launchUrl(url)) {
        throw Exception('could not launch $url');
      }
    }

    final achievements =
        list
            .map(
              (achievement) => Card(
                color: theme.surface,

                margin: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (achievement.images.isNotEmpty) {
                                      setState(() {
                                        achievement.image =
                                            (achievement.image + 1) %
                                            achievement.images.length;
                                      }); // Add your action here
                                    }
                                  },
                                  child: SizedBox(
                                    height: 180,
                                    width: 270,
                                    child: Image.asset(
                                      ('assets/images/'
                                          '${achievement.images.isNotEmpty ? achievement.images[achievement.image] : 'zoosmad3.png'}'),
                                      fit: BoxFit.fill,
                                      //colorFilter: ColorFilter.mode(
                                      //  theme.surface,
                                      //  BlendMode.srcIn,
                                      //),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                GestureDetector(
                                  onTap: () {
                                    if (achievement.link.isNotEmpty) {
                                      launchurl('https://${achievement.link}');
                                    }
                                  },
                                  child: HoverableContainer(
                                    defaultColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    child: Text(achievement.link, style: small),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              //color: Colors.indigoAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(achievement.title, style: chapter),
                                  SizedBox(height: 20),
                                  Text(
                                    achievement.description,
                                    textAlign: TextAlign.center,
                                    style: category,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList();

    final title = lang == Languages.fr ? "Réussites" : "Achievements";

    return Container(
      key: prestige,
      width: width(1.0, context),
      color: Theme.of(context).colorScheme.onSecondary,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [titleWidget(title), SizedBox(height: 32), ...achievements],
        ),
      ),
    );
  }
}
