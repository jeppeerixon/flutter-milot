import 'package:flutter/material.dart';

class ContactContainer extends StatelessWidget {

  final String infoCategory;  
  final String infoTitle;
  final String infoDescription;   
  final int infoNumber;
  final String infoEmail; 
  final infoColor;
  final String infoUrl;

  const ContactContainer({
    super.key,
    required this.infoCategory,
    required this.infoTitle,
    required this.infoDescription,
    required this.infoNumber,
    required this.infoEmail,
    required this.infoColor,
    required this.infoUrl
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: infoColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 7.5, right: 15.0, bottom: 7.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(infoCategory, style: TextStyle(color: Colors.black54)),
              Text(infoTitle, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Text(''),
              Text(infoDescription),
              Text(''),
              Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.phone),
                  Text(infoNumber.toString(), style: TextStyle(fontWeight: FontWeight.w500), textAlign: TextAlign.left,),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.mail),
                  Text(infoEmail, style: TextStyle(fontWeight: FontWeight.w500), textAlign: TextAlign.start,),
                ],
                
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hemsida', style: TextStyle(fontWeight: FontWeight.w500)),
                  IconButton(
                    icon: const Icon(Icons.arrow_circle_right),
                    onPressed: () {
                      print(infoUrl);
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