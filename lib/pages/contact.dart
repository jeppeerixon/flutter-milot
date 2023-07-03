import 'package:flutter/material.dart';

import 'contactCard.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({ Key? key }) :super(key: key);

  final List _info = [
    // infoCategory, infoTitle, infoDescription, infoNumber, infoMail, infoColor, infoUrl
    ['Milot','Husvärd/Reception', 'Kom i kontakt med personal på plats i lokalen. Är dörren låst eller har du/ditt barn glömt kläder? Kontakt Vardagar 15:30 - 21:30 & Helger 10:00 - 19:00.' , 0701234567, 'husvard@milot.se', Colors.purple, 'www.milot.se'],
    ['Kommun','Bokning', 'Kom i kontakt med personal på plats i lokalen' , 087068102, 'martin.hjelm@sundbyberg.se', Colors.amber, 'https://sundbyberg.actorsmartbook.se/'],
    ['Kommun','Vaktmästare', 'Kommunens vaktmästare' , 0701234567, 'idrott@sundbyberg.se', Colors.pinkAccent, 'www.sundbyberg.se'],
    ['Utvecklare','Jesper Eriksson', 'Byggde denna App för att lära mig utveckla Appar. Studerar idag till Front End Utvecklare och arbetar även för Street Mentality Parkourklubb' , 0704827539, 'jesper@streetmentality.se', Colors.deepPurple, 'https://github.com/jeppeerixon'],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('K O N T A K T'),
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink[400],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text('Här hittar du telefon och mail till personal i Milot eller i kommunen. Läs igenom ordentligt så du kontaktar rätt person för rätt fråga!')),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList.builder(
              itemCount: _info.length,
              itemBuilder: (context, index) {
                return ContactContainer(
                  infoCategory: _info[index][0],
                  infoTitle: _info[index][1],
                  infoDescription: _info[index][2],
                  infoNumber: _info[index][3],
                  infoEmail: _info[index][4],
                  infoColor: _info[index][5],
                  infoUrl: _info[index][6],
                );
            })
        ],
      ),
      ),
    );
  }
}