import 'package:flutter/material.dart';
import 'package:novox/core/colors/colors.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex : selectedIndex,
        onTap : (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: const[
          BottomNavigationBarItem (icon: Icon(Icons.home),
          backgroundColor: greyClr,
         
          ),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard),
         ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
         ),
        ]
      ),
    );
  }
} 