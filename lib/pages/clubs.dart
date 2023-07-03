import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/clubCard.dart';
import 'package:flutter_app_1/pages/contact.dart';
import 'package:flutter_app_1/pages/home.dart';
import 'package:flutter_app_1/pages/tabs/orgs_sport.dart';
import 'package:flutter_app_1/pages/tabs/orgs.dart';
import 'package:flutter_app_1/pages/tabs/orgs_fight.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.sports_kabaddi)),
                Tab(icon: Icon(Icons.sports_soccer)),
              ],
            ),
            title: const Text('F Ö R E N I N G A R'),
          ),
          body: TabBarView(
            children: [
              ClubsAll(),
              ClubsFights(),
              ClubsSports()
            ],
          ),
        ),
      ),
    );
  }
}