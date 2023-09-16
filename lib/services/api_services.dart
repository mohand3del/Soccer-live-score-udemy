

import 'dart:convert';

import 'package:soccer_live_score/model/model.dart';
import 'package:http/http.dart';
class ApiServices{


  static String apiKey = '57c754acc782221a236563314899db14';
  static const headers = {
          'x-rapidapi-host': "v3.football.api-sports.io",
          'x-rapidapi-key': '57c754acc782221a236563314899db14'
        };

  Future<List<SoccerMatch>> getAllMatch() async {
    final apiUrl = Uri.parse("https://v3.football.api-sports.io/fixtures?live=all");

    Response response = await get(apiUrl , headers: headers);

    try {
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List<dynamic> matchesList = body['response'];
        print(body);
        List<SoccerMatch> matches = matchesList.map((dynamic item) =>
            SoccerMatch.fromJson(item)).toList();
        return matches;
      }

      // Handle other status codes or errors here
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }


  }

