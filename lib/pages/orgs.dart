import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/clubCard.dart';

class OrgScreen extends StatelessWidget {
  OrgScreen({ Key? key }) :super(key: key);

  final List _clubs = [
    // clubImage, clubName, clubCategory, clubRoom, clubUrl
    ['lib/images/streetcard.jpg','Street Mentality', 'Akrobatik', 'Parkourhallen', Colors.purple, 'www.streetmentality.se'],
    ['lib/images/h5card.jpg','High Five Taekwondo', 'Kampsport', 'Röda', Colors.red, 'https://www.highfivetkd.se'],
    ['lib/images/libaaxcard.jpg','Team Libaax', 'Träning', 'Blåsvarta', Colors.blue, 'https://www.instagram.com/teamlibaax/'],
    ['lib/images/forcacard.jpg','Forca Fighting', 'Kampsport', 'Blå', Colors.amber, 'https://www.forcafighting.com/'],
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Föreningar'),
        ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _clubs.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return CardContainer(
            clubImage: _clubs[index][0],
            clubName: _clubs[index][1],
            clubCategory: _clubs[index][2],
            clubRoom: _clubs[index][3],
            clubColor: _clubs[index][4],
            clubUrl: _clubs[index][5],
          );
        })
      ),
    );
  }
}