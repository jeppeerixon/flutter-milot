import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/map.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/sbglogo.jpg'),
          ),

          //header
          Text('Aktivitetshuset Milot',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
            ),
          ),

          //text
          Text('Ett hus där alla är välkomna och gränsen mellan kultur och idrott suddas ut',
          textAlign: TextAlign.center,
          ),

          const Spacer(),

          //knapp
          ElevatedButton(
            child: const Text('Hitta din passion!'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MapScreen()));
            },
          ),

          const Spacer(),
        ],
      ),
    );
  }
}