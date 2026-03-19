import 'package:flutter/material.dart';
import 'package:novox/app/view/home_view.dart';
import 'package:novox/core/app_text_style/app_text.dart';
import 'package:novox/core/colors/colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryClr,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: secondaryClr,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Image.asset('assets/images/appBarImage.svg'),
              SizedBox(width: 10),
             Text("NOVX", style:  primaryTextStyle,)
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              width: 336,
              height: 336,
              decoration: BoxDecoration(
                color: secondaryClr,
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/loginScreenImage.png"))
              ),
            ),
            Text("Email Address", style: TextStyle(color: Colors.white , fontSize: 18),),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.mail_outline_rounded, color: greyClr,),
                hint: Text("Enter you email ID",style: TextStyle(color: greyClr),)
              ),
            ),
            SizedBox(height: 15),
            Text("Password", style: TextStyle(color: Colors.white , fontSize: 18),),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.lock_outlined, color: greyClr,),
                hint: Text("Enter your Password",style: TextStyle(color: greyClr),)
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(height: 60,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
              color: teritaryClr,
              onPressed: (){
               Navigator.pushReplacement(context, 
               MaterialPageRoute(builder:(context) => HomeView()));
            },  child:
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Log In", style: TextStyle(color: Colors.white),),
                SizedBox(width: 10),
                Icon(Icons.login, color: Colors.white,)
              ],
            ), ),
            SizedBox(height: 40),
            Center(child: Text("POWERD BY",style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 10,
              color: const Color.fromARGB(255, 68, 79, 85)),)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // Image.asset('assets/images/appBarImage.svg'),
                 Text("Novox Edtech", style: primaryTextStyle,)
                ],
              )
          ],
        ),
      ),
    );
  }
}