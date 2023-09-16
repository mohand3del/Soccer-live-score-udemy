import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccer_live_score/model/model.dart';

Widget matchTile(SoccerMatch match) {
  var homeGoal = match.goals!.home;
  var awayGoal = match.goals!.away;
  if (homeGoal == null) homeGoal = 0;
  if (awayGoal == null) awayGoal = 0;

  return Container(
    margin: EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            (match.home!.name).toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        Image.network(
          (match.home!.logo).toString(),
          width: 36,
        ),
        Expanded(
          child: Text(
            "${match.goals!.home}-${match.goals!.away}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),

        Image.network(
          (match.away!.logo).toString(),
          width: 36,
        ),
        Expanded(
          child: Text(
           ( match.away!.name).toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
