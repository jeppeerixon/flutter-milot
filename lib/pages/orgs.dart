import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/info.dart';

class OrgScreen extends StatelessWidget {
  OrgScreen({ Key? key }) :super(key: key);

  final List _clubs = ['Street Mentality', 'High Five TKD', 'Team Libaax', 'Forca Fighting'];

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
          return CardContainer(child: _clubs[index],);
        } )
      ),
    );
  }
}