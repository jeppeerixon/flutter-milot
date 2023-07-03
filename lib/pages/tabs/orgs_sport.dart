import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/clubCard.dart';

class ClubsSports extends StatelessWidget {
  ClubsSports({ Key? key }) :super(key: key);

  final List _clubs = [
    // clubCategory, clubName, clubDescription, clubRoom, clubUrl
    ['Träning','Team Libaax', 'Fysträning och bootcamps för alla olika åldrar, gratis alternativ finns.', 'Blåsvarta', Colors.blue, 'https://www.instagram.com/teamlibaax/'],
    ['Idrott','Ursvik IK', 'Innebandy och Basket för barn och ungdomar.', 'Orange', Colors.orange, 'https://www.ursvikik.se'],
    ['Idrott','Sundbybergs IK', 'Orientering, Skidor, Fotboll och massor av andra idrotter.', 'Orange', Colors.green, 'https://www.sik.se'],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _clubs.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1/1.25,
        crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return CardContainer(
            clubCategory: _clubs[index][0],
            clubName: _clubs[index][1],
            clubDescription: _clubs[index][2],
            clubRoom: _clubs[index][3],
            clubColor: _clubs[index][4],
            clubUrl: _clubs[index][5],
          );
        })
      ),
    );
  }
}