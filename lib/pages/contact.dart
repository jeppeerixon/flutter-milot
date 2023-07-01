import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({ Key? key }) :super(key: key);

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
                color: Colors.pink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('Här hittar du telefon och mail till personal')),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple,
                height: 300,
                child: Center(
                  child: Text('hej')
                  ),
                ),
            )
            ),
            SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple,
                height: 300,
                child: Center(
                  child: Text('vem')
                  ),
                ),
            )
            ),
            SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple,
                height: 300,
                child: Center(
                  child: Text('går')
                  ),
                ),
            )
            ),
        ],
      ),
      ),
    );
  }
}