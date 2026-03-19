import 'package:flutter/material.dart';
import 'package:novox/core/app_text_style/app_text.dart';
import 'package:novox/core/colors/colors.dart';
import 'package:novox/shared/widgets/bottom_nav.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryClr,
      body:
       ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/images 2.png'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hey Alex 👋", style: primaryTextStyle,),
                        Text("Ready for your mission?", style: TextStyle(color: greyClr),)
                      ],
                    ), 
                    SizedBox(width: 100),
                    Icon(Icons.notifications, color: Colors.white,size: 30,)
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 332,
                  width: 367,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: greyClr
                  ),
                )
                
              ],
            ),
          )
        ],
       ),
      //  bottomNavigationBar: BottomNav(),
    );
  }
}
