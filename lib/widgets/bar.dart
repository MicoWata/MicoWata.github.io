import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello/tool.dart';
import 'package:hello/widgets/animated.dart';
import 'package:hello/widgets/button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final ButtonStyle style = TextButton.styleFrom(
      //minimumSize: Size(30, 45),

      //padding: EdgeInsets.zero,
      //foregroundColor: Theme.of(context).colorScheme.onSurface,
      //backgroundColor: Theme.of(context).colorScheme.surface,
    );

    int scrollToContainer(GlobalKey key) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
      return 0;
    }

    void copyToClipboard(String text) {
      Clipboard.setData(ClipboardData(text: text));
      //showLeftSnackBar("hello");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Courriel copié !',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          margin: EdgeInsets.only(
            bottom: height(0.9, context) - kToolbarHeight,
            right: 16,
            left: width(0.8, context),
          ),
          elevation: 0,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }

    Expanded name() {
      final orientation = MediaQuery.of(context).orientation;

      String name = orientation == Orientation.landscape ? "Michaël" : "Mic";

      return Expanded(
        flex: 1,

        child: Padding(
          padding: EdgeInsets.only(left: relativeWidth(48, context)),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      );
    }

    Expanded navigators() {
      //return Padding(
      //  padding: EdgeInsets.only(right: 24),
      //child:
      return Expanded(
        flex: 4,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              Jumper(
                master: false,
                onPressed: () {
                  scrollToContainer(welcome);
                },
                child: Icon(Icons.home),
              ),
              SizedBox(width: 8),
              Jumper(
                master: false,
                onPressed: () {
                  scrollToContainer(preface);
                },
                child: Icon(Icons.emoji_people),
              ),
              SizedBox(width: 8),
              Jumper(
                master: false,
                onPressed: () {
                  scrollToContainer(journey);
                },
                child: Icon(Icons.menu_book),
              ),
              SizedBox(width: 8),
              Jumper(
                master: false,
                onPressed: () {
                  scrollToContainer(prestige);
                },
                child: Icon(Icons.stars),
              ),
              SizedBox(width: 8),
              Jumper(
                master: false,
                onPressed: () {
                  scrollToContainer(school);
                },
                child: Icon(Icons.school),
              ),
              SizedBox(width: relativeWidth(48, context)),
              Jumper(
                master: true,
                onPressed: () {
                  copyToClipboard("michael.gagnon1987@gmail.com");
                },
                child: Icon(Icons.mail, color: theme.surfaceContainerHighest),
              ),
              //ElevatedButton(
              //  onPressed: () {
              //    copyToClipboard("michael.gagnon1987@gmail.com");
              //  },
              //  style: TextButton.styleFrom(
              //    backgroundColor: theme.secondary,
              //    foregroundColor: theme.onSecondary,
              //  ),
              //  child: Icon(Icons.mail, color: theme.onPrimary),
              //),
              SizedBox(width: relativeWidth(48, context)),
            ],
          ),
        ),
      );
    }

    return AppBar(
      //backgroundColor: Theme.of(context).colorScheme.surface,
      //shadowColor: Theme.of(context).colorScheme.onSurfaceVariant,
      elevation: 10,
      centerTitle: true,
      actions: [name(), navigators()],
      //foregroundColor: Theme.of(context).canvasColor,
      //backgroundColor: Theme.of(context).primaryColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
