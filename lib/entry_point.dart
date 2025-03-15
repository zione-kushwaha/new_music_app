import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _ontaItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _ontaItemTapped,
          selectedItemColor: Theme.of(context).primaryColorLight,
          unselectedItemColor: Theme.of(context).unselectedWidgetColor,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Iconsax.home)),
            BottomNavigationBarItem(
                label: 'Search', icon: Icon(Iconsax.search_favorite)),
            BottomNavigationBarItem(
                label: 'Setting', icon: Icon(Iconsax.setting))
          ]),
    );
  }
}
