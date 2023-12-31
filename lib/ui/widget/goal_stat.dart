import 'package:flutter/material.dart';

Widget goalState(int expandedTime, int homeGoal, int awayGoal) {
  var home = homeGoal;
  var away = awayGoal;
  var elapsed = expandedTime;
  if (home == null) home = 0;
  if (away == null) away = 0;
  if (elapsed == null) elapsed = 0;
  return Expanded(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "${expandedTime}",
        style: TextStyle(fontSize: 30),
      ),
      Expanded(
          child: Center(
        child: Text(
          "${homeGoal} - ${awayGoal}",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ))
    ],
  ));
}
