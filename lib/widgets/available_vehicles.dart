import 'package:flutter/material.dart';

class AvailableVehicles extends StatelessWidget {
  const AvailableVehicles({super.key, required this.imgSrc});

  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cargo freight',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Reliable',
              style: TextStyle(color: Color(0xff858587), fontSize: 11),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                imgSrc,
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
