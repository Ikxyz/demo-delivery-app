import 'package:flutter/material.dart';

class SavedPlacesScreen extends StatelessWidget {
  const SavedPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 2),
                spreadRadius: 0,
                blurRadius: 20,
                color: Color.fromRGBO(0, 0, 0, 0.1),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
          child: Column(
            children: const [
              SavedPlacesContainer(title: 'Test'),
              SavedPlacesContainer(title: 'Test'),
              SavedPlacesContainer(title: 'Test'),
              SavedPlacesContainer(title: 'Test'),
            ],
          ),
        ),
      ),
    );
  }
}

class SavedPlacesContainer extends StatelessWidget {
  const SavedPlacesContainer({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: const Color(0xff47358d),
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.work,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Work',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '2972 Westheimer Rd. Santa Ana, illinois 85486',
                    style: TextStyle(color: Color(0xff858587), fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider()
        ],
      ),
    );
  }
}
