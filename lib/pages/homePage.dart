import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../themes/colors.dart';
import 'urlsPage.dart';
import 'favorisPage.dart';
import 'addUrl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: couleur,
        foregroundColor: blanc,
        title: [
          Text("URL Book"),
          Text("Favoris"),
        ][_currentIndex],
      ),
      body: [
        UrlsPage(),
        FavorisPage()
      ][_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: couleur,
        tooltip: "Ajouter un nouveau lien",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddUrl(),));
        },
        child: Icon(Icons.add, color: blanc,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: couleur,
        activeColor: blanc,
        inactiveColor: gris,
        iconSize: 25,
        icons: [FontAwesomeIcons.house, Icons.favorite],
        activeIndex: _currentIndex,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (int index) => setCurrentIndex(index),
        //other params
      ),
    );
  }
}
