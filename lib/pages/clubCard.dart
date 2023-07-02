import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {

  final String clubCategory;  
  final String clubName;
  final String clubDescription;   
  final String clubRoom; 
  final clubColor;
  final String clubUrl;

  const CardContainer({
    super.key,
    required this.clubCategory,
    required this.clubName,
    required this.clubDescription,
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
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 7.5, right: 15.0, bottom: 7.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(clubCategory, style: TextStyle(color: Colors.black54)),
              Text(clubName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Text(clubDescription),
              Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hemsida', style: TextStyle(fontWeight: FontWeight.w500)),
                  IconButton(
                    icon: const Icon(Icons.arrow_circle_right),
                    onPressed: () {
                      print(clubUrl);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}