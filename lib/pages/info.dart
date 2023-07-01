import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {  
  final String clubImage; 
  final String clubName;
  final String clubCategory;
  final String clubRoom; 
  final String clubUrl;

  const CardContainer({
    super.key,
    required this.clubImage,
    required this.clubName,
    required this.clubCategory,
    required this.clubRoom,
    required this.clubUrl
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Center(
        child: Text(clubName)
        ),
    );
  }
}