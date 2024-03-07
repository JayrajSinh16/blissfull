import 'package:flutter/material.dart';

class DataDay extends StatelessWidget {
  final String date;
  final String day;
  final Color color;
  final FontWeight weight;
  final double size;
  const DataDay({
    super.key,
    required this.date,
    required this.day,
    this.color = Colors.white60,  this.weight = FontWeight.w400,  this.size=20,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          date,
          style:  TextStyle(
            fontWeight: weight,
            color: color,
            fontSize: size,
          ),
        ),
        Text(
          day,
          style:  TextStyle(
            fontWeight: weight,
            color: color,
            fontSize: size,
          ),
        ),
      ],
    );
  }
}
