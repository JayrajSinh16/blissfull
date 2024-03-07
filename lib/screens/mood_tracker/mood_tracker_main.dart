import 'package:blissful/screens/mood_tracker/happy_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoodTrackerMainScreen extends StatelessWidget {
  static const routeName = '/mood-tracker-main-screen';
  const MoodTrackerMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "How would you\n describe your mood ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0xff022B3A),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              "I feel Netural",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff736B66),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset(
            'assets/images/netural.svg',
            alignment: Alignment.center,
          ),
          const Spacer(),
          Stack(
            children: [
              Image.asset(
                'assets/images/mood-tracker.png',
              ),
              Positioned(
                left: 175,
                top: 200,
                child: IconButton(
                  onPressed: ()=> Navigator.pushNamed(context, HappyScreen.routeName),
                  icon: SvgPicture.asset(
                    'assets/icons/next-icon.svg',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
