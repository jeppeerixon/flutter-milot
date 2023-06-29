import 'package:flutter/material.dart';

class OrgScreen extends StatelessWidget {
  const OrgScreen({ Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Föreningar'),
        )
      ),
    );
  }
}