


import 'package:flutter/material.dart';
import 'package:moniepiont/homepage.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});
static const String route = "MyBottomNavigation";
  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _currentIndex = 0;
  final List<NavigationItem> navigationItems = [
    NavigationItem(
      title: 'Home',
      image: Icons.home_outlined,
      page: const MyHomePage(),
      activeImage: Icons.home_outlined,
    ),
    NavigationItem(
      title: 'Calculate',
      image: Icons.calculate,
      page:  Container(),
      activeImage:   Icons.calculate,
    ),
     NavigationItem(
      title: 'Shipment',
      image:  Icons.timer_outlined,
      page:  Container(), 
      activeImage: Icons.timer_outlined,
    ),
     NavigationItem(
      title: 'Profile',
      image:Icons.person_2_outlined,
      page:  Container(), 
      activeImage:  Icons.person_2_outlined,
    ),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: navigationItems[_currentIndex].page,
        bottomNavigationBar: 
  
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
           mainAxisSize: MainAxisSize.min,
      children: [
        TabIndicators(
          inactiveColor: Colors.transparent,
          activeIdx: _currentIndex,
          activeColor: const Color(0xff47358d),
          numTabs: navigationItems.length,
         // padding: 10,
          //height: 4,
        ),
            BottomNavigationBar(
              //backgroundColor: Color(0xff0B0B0E),
             type: BottomNavigationBarType.fixed,
              unselectedFontSize: 10,  
              selectedFontSize: 10,
              elevation: 0,
              selectedItemColor: const Color(0xff47358d),
              showUnselectedLabels: true,
              showSelectedLabels: true,
              unselectedItemColor: const Color.fromRGBO(41, 45, 50, 1),
             selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: const Color(0xff47358d),
                fontSize: 10
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 223, 175, 3),
                fontSize: 10
              ),
              currentIndex: _currentIndex,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: navigationItems.map((item) {
                return BottomNavigationBarItem(
                   backgroundColor: const Color(0xff0B0B0E),
                  label: item.title,
                  activeIcon:Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                    child: Icon(item.activeImage)
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                    child: Icon(item.image)
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      );
  }
}

class NavigationItem {
  final String title;
  final IconData image;
  final IconData activeImage;
  final Widget page;

  NavigationItem({required this.title, required this.image, required this.activeImage, required this.page});
}

class TabIndicators extends StatelessWidget {
  final int _numTabs;
  final int _activeIdx;
  final Color _activeColor;
  final Color _inactiveColor;
//  final double _padding;
  //final double _height;

  const TabIndicators({ 
    required int numTabs, 
    required int activeIdx, 
    required Color activeColor, 
   // required double padding,
    //required double height,
    Color inactiveColor =  Colors.black,
    Key? key }) : 
    _numTabs = numTabs, 
    _activeIdx = activeIdx,
    _activeColor = activeColor, 
    _inactiveColor = inactiveColor,
   // _padding = padding,
    //_height = height,
    super(key: key);

  @override
  Widget build(BuildContext context) {

    final elements = <Widget>[];

    for(var i = 0; i < _numTabs; ++i) {
      elements.add(
        Expanded(child: 
          Container(
            width: 35,
             height: 2.5,
             alignment: Alignment.center,
            color: i == _activeIdx ? _activeColor : _inactiveColor)
        )
      );
    }

    return 
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: elements,
        );
  }
}