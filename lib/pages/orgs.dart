import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/info.dart';

class OrgScreen extends StatelessWidget {
  OrgScreen({ Key? key }) :super(key: key);

  final List _clubs = [
    // clubImage, clubName, clubCategory, clubRoom, clubUrl
    ['lib/images/streetcard.jpg','Street Mentality', 'Akrobatik', 'Parkourhallen', 'www.streetmentality.se'],
    ['lib/images/h5card.jpg','High Five Taekwondo', 'Kampsport', 'Röda', 'https://www.highfivetkd.se'],
    ['lib/images/libaaxcard.jpg','Team Libaax', 'Träning', 'Blåsvarta', 'https://www.instagram.com/teamlibaax/'],
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Föreningar'),
        ),
      body: ListView.builder(
        itemCount: _clubs.length,
        itemBuilder: (context, index) {
          return CardContainer(
            clubImage: _clubs[index][0],
            clubName: _clubs[index][1],
            clubCategory: _clubs[index][2],
            clubRoom: _clubs[index][3],
            clubUrl: _clubs[index][4],
          );
        })
      ),
    );
  }
}