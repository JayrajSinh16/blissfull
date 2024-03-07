import 'package:blissful/screens/mood_tracker/depressed_screen.dart';
import 'package:blissful/screens/mood_tracker/happy_screen.dart';
import 'package:blissful/screens/mood_tracker/netural_screen.dart';
import 'package:blissful/screens/mood_tracker/overjoyed_screen.dart';
import 'package:blissful/screens/mood_tracker/sadness_secreen.dart';

List<String> moodList = [
  "Happy",
  "Depressed",
  "Sadness",
  "Netural",
  "Overjoyed",
];

List<String> moodNavigate = [
  HappyScreen.routeName,
  DepressedScreen.routeName,
  SadnessScreen.routeName,
  NeturalScreen.routeName,
  OverjoyedScreen.routeName,
];
