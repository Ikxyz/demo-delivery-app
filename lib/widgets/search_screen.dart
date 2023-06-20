

import 'package:flutter/material.dart';
import 'package:moniepiont/widgets/saved_places.dart';
import 'package:moniepiont/widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            color: const Color(0xff47358d),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 40, 0, 0),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.white,)),
                    const SearchBar2() 
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                     Text('Saved places',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                     Text('View all',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffe2803a),
                    ),
                    ),
                  ],
                ),
                const SavedPlacesScreen()
              ],
            ),
          )
        ],
      ),
    );
  }
}


