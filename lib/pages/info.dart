import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {  
  final String child;

  CardContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Center(
        child: Text(child)
        ),
    );
  }
}