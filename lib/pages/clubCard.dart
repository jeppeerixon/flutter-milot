import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {  
  final String clubImage; 
  final String clubName;
  final String clubCategory;
  final String clubRoom; 
  final clubColor;
  final String clubUrl;

  const CardContainer({
    super.key,
    required this.clubImage,
    required this.clubName,
    required this.clubCategory,
    required this.clubRoom,
    required this.clubColor,
    required this.clubUrl
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: clubColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(clubName),
            Text(clubCategory),
            Text(clubRoom),
            Text(clubUrl),

          ],
        ),
      ),
    );
  }
}