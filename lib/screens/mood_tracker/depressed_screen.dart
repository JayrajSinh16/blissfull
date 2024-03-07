import 'package:blissful/utils/mood_util.dart';
import 'package:blissful/screens/mood_tracker/widgets/date_day.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DepressedScreen extends StatefulWidget {
  static const routeName = '/mood-tracker-depressed-screen';
  const DepressedScreen({super.key});

  @override
  State<DepressedScreen> createState() => _DepressedScreenState();
}

class _DepressedScreenState extends State<DepressedScreen> {
  double _sliderValue = 50;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffA694F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffA694F5),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white60,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/next-icon.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: size.height / 18,
          ),
          const Center(
            child: Text(
              "How are you feeling\nthis day ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff705600),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: size.height / 12,
          ),
          Center(
            child: SvgPicture.asset(
              "assets/images/depressed.svg",
            ),
          ),
          SizedBox(
            height: size.height / 10,
          ),
          const Center(
            child: Text(
              "I'm Feeling Depressed",
              style: TextStyle(fontSize: 20, color: Color(0xff705600)),
            ),
          ),
          SizedBox(
            height: size.height / 50,
          ),
          Center(
            child: Text(
              '$_sliderValue %',
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.white60,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: size.height / 80),
          Center(
            child: Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
              activeColor: const Color(0xff705600),
              inactiveColor: Colors.white60,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DataDay(date: '15', day: 'Mon'),
                DataDay(date: '16', day: 'Tue'),
                DataDay(date: '17', day: 'Wed'),
                DataDay(
                  date: '18',
                  day: 'Thu',
                  color: Color(0xff705600),
                  weight: FontWeight.w700,
                  size: 24,
                ),
                DataDay(date: '19', day: 'Fri'),
                DataDay(date: '20', day: 'Sat'),
                DataDay(date: '21', day: 'Sun'),
              ],
            ),
          ),
          ListView.builder(
            itemCount: moodList.length,
            itemBuilder: (BuildContext context, int index) {
              return TextButton(
                onPressed: () {},
                child: Text(moodList[index]),
              );
            },
          )
        ],
      ),
    );
  }
}
