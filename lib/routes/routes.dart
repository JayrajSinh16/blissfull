import 'package:blissful/screens/mood_tracker/depressed_screen.dart';
import 'package:blissful/screens/mood_tracker/happy_screen.dart';
import 'package:blissful/screens/mood_tracker/mood_tracker_main.dart';
import 'package:blissful/screens/mood_tracker/netural_screen.dart';
import 'package:blissful/screens/mood_tracker/overjoyed_screen.dart';
import 'package:blissful/screens/mood_tracker/sadness_secreen.dart';
import 'package:blissful/widgets/error_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case MoodTrackerMainScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const MoodTrackerMainScreen(),
      );
    case HappyScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HappyScreen(),
      );
    case DepressedScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const DepressedScreen(),
      );
    case OverjoyedScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const OverjoyedScreen(),
      );
    case NeturalScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const NeturalScreen(),
      );
    case SadnessScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SadnessScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(
            error: "This Page doesn't exits",
          ),
        ),
      );
  }
}