import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello/tool.dart';
import 'widgets/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line
      title: 'Michaël Gagnon Corneau',

      theme: ThemeData(
        //fontFamily: GoogleFonts.knewave().fontFamily,
        //textTheme:
        //GoogleFonts.gotuTextTheme(), // Replace 'poppins' with any Google Font
        //textTheme: const TextTheme(
        //  // Customize specific text styles if needed
        //  bodyLarge: TextStyle(fontFamily: 'Roboto'),
        //  bodyMedium: TextStyle(fontFamily: 'Roboto'),
        //  titleLarge: TextStyle(fontFamily: 'Roboto'),
        //),
        textTheme: GoogleFonts.sonoTextTheme(
          ThemeData.dark()
              .textTheme, // Use dark theme as base since you're using dark mode
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          //  //surface: Colors.blueGrey.shade800,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Michael Gagnon Corneau'),
    );
  }
}
