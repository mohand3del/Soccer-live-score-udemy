import 'package:flutter/material.dart';
import 'package:soccer_live_score/services/api_services.dart';
import 'package:soccer_live_score/ui/widget/page_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ApiServices data = ApiServices();

    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        title: Text(
          "SOCCERBOARD",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: ApiServices().getAllMatch(),
          builder: (context, snapshot) {

            if (snapshot.hasData) {
              return PageBody(snapshot.data!);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

          },
      ),
    );
  }
}
