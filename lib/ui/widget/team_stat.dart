import 'package:flutter/cupertino.dart';

Widget TeamState(String team, String urlLogo, String teamName) {
  return Expanded(
      child: Column(
    children: [
      Text(
        team,
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(
        height: 10,
      ),
      Expanded(
        child: Image.network(
          urlLogo,
          width: 54,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Expanded(
        child: Text(
          teamName,
          style: TextStyle(fontSize: 18),
        ),
      ),
    ],
  ));
}
