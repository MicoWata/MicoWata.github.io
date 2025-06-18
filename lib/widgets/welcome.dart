import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello/widgets/animated.dart';
import 'package:hello/widgets/hoverable.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:hello/tool.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  String _description = "";

  Future<void> launchurl(String urlstring) async {
    final Uri url = Uri.parse(urlstring);
    if (!await launchUrl(url)) {
      throw Exception('could not launch $url');
    }
  }

  Future<void> _loadAchievements() async {
    final jsonData = await readJson(language);
    final String? achievementsJson = jsonData['welcome'] as String?;

    if (mounted) {
      setState(() {
        _description = achievementsJson!;
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
    final ButtonStyle style = TextButton.styleFrom(
      backgroundColor: theme.onSurfaceVariant,
    );
    final Color background = theme.surface;

    Expanded links() {
      Column link(String name, String adress) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: FittedBox(
                  child: JumpingButton(
                    //onPressed: () {},
                    onPressed: () => launchurl(adress),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: HoverableContainer(
                        defaultColor: theme.onSurfaceVariant,

                        radius: 35,
                        hoverColor: theme.primary,
                        child: SvgPicture.asset(
                          'assets/images/'
                          '$name'
                          '.svg',
                          width: 50,
                          height: 64,
                          fit: BoxFit.none,
                          //colorFilter: ColorFilter.mode(
                          //  theme.surface,
                          //  BlendMode.srcIn,
                          //),
                          semanticsLabel: name,
                        ),
                        //),
                      ),
                    ),
                  ),
                  //onPressed: () => launchurl(adress),
                  //label: Text("HELLO"),
                  //padding: EdgeInsets.all(16.0),
                ),
              ),
            ),
            SizedBox(height: height(0.03, context)),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: FittedBox(
                child: Text(name[0].toUpperCase() + name.substring(1)),
              ),
            ),
          ],
        );
      }

      return Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          //alignment: Alignment.bottomCenter,
          //widthFactor: 0.5, // 50% of parent width
          //heightFactor: 0.9, // 50% of parent height
          width: height(0.75, context),

          //fit: BoxFit.fill,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Button(child: Container(), onPressed: () {}),
              link('github', 'https://github.com/MicoWata'),
              link('youtube', 'https://www.youtube.com/@micowata'),
              link('itch', 'https://itch.io'),
              //jumping(),
            ],
          ),
        ),
      );
    }

    Expanded picture() {
      return Expanded(
        flex: 3,
        child: FractionallySizedBox(
          alignment: Alignment.bottomCenter,
          widthFactor: 0.9, // 50% of parent width
          heightFactor: 0.9, // 50% of parent height
          child: Material(
            elevation: 4,
            shape: CircleBorder(), // Add this line

            child: Stack(
              alignment: Alignment.center,
              //alignment: Alignment.topRight,
              children: [
                Container(
                  //width: height(0.5, context),
                  //height: height(0.5, context),
                  decoration: BoxDecoration(
                    border: Border.all(width: 6.0),
                    shape: BoxShape.circle,
                    color: theme.tertiary,
                    image: DecorationImage(
                      image: AssetImage('assets/images/picture1.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Container(
                  //width: height(0.5, context),
                  //height: height(0.5, context),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 0.9,
                      colors: [Colors.transparent, theme.secondary],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Expanded name() {
      final orientation = MediaQuery.of(context).orientation;

      double space = orientation == Orientation.landscape ? 0.5 : 0.4;

      return Expanded(
        flex: 1,
        child: SizedBox(
          width: height(space, context),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Michaël Gagnon Corneau",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: Text(
                    _description,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      color: theme.onSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      key: welcome,
      width: width(1.0, context),
      height: MediaQuery.of(context).size.height - kToolbarHeight,
      color: background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [picture(), name(), links()],
      ),
    );
  }
}
