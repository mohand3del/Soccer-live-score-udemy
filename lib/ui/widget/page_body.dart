import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccer_live_score/model/model.dart';
import 'package:soccer_live_score/ui/widget/goal_stat.dart';
import 'package:soccer_live_score/ui/widget/match_tile.dart';
import 'package:soccer_live_score/ui/widget/team_stat.dart';

Widget PageBody(List<SoccerMatch> allMatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TeamState(
                  'Local Team',
                  (allMatches[0].home!.logo).toString(),
                  (allMatches[0].home!.name).toString(),
                ),
                goalState(
                    (allMatches[0].fixture!.status.elapsed)!.toInt(),
                    (allMatches[0].goals!.home)!.toInt(),
                    (allMatches[0].goals!.away)!.toInt()),
                TeamState(
                  'Visitor Team',
                  (allMatches[0].away!.logo).toString(),
                  (allMatches[0].away!.name).toString(),
                ),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color:Colors.deepPurple,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "MATCHES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allMatches.length,
                      itemBuilder: (context, index) {
                        return matchTile(allMatches[index]);
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    ],
  );
}
