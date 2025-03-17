import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:h1/common/widget/app_bar.dart';
import 'package:h1/common/widget/search_container.dart';
import 'package:h1/features/screens/home/view/home_view.dart';
import 'package:h1/utils/theme/constants/colors.dart';
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
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
            search: TSearchContainer(
                text: 'Your Mood', icon: Iconsax.search_favorite)),
        body: TabBarView(physics: const BouncingScrollPhysics(), children: [
          HomeView(),
          Container(
            child: Center(
              child: Text('Search'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Setting'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Setting'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Setting'),
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _ontaItemTapped,
            selectedItemColor: Theme.of(context).primaryColorLight,
            unselectedItemColor: Theme.of(context).unselectedWidgetColor,
            items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Iconsax.home)),
              BottomNavigationBarItem(
                  label: 'Equalizer', icon: Icon(Icons.equalizer)),
              BottomNavigationBarItem(
                  label: 'Setting', icon: Icon(Iconsax.setting))
            ]),
      ),
    );
  }
}
