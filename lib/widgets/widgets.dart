import 'package:flutter/material.dart';

class CSearchBar extends StatelessWidget {
  const CSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        width: 400,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 5, 0),
              child: Icon(
                Icons.search,
                size: 20,
              ),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter the receipt number ...',
                    hintStyle:
                        TextStyle(color: Color(0xff858587), fontSize: 13)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color(0xffe2803a),
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('assets/scanner.png'),
                      scale: 6,
                      //colorFilter: ColorFilter.mode(Colors.white, BlendMode.)
                    )),
                // child: Image.asset('assets/scanner.png', color: Colors.black, scale: 3, fit: BoxFit.contain,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar2 extends StatelessWidget {
  const SearchBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        width: 316,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 5, 0),
              child: Icon(
                Icons.search,
                size: 20,
              ),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(60)),
                    child: Icon(
                      Icons.clear,
                      size: 15,
                      color: Colors.grey,
                    ))),
          ],
        ),
      ),
    );
  }
}
