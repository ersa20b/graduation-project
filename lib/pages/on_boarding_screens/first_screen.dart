import 'package:flutter/material.dart';
import 'package:graduation_med_/util/circle.dart';
import 'package:graduation_med_/pages/home_page.dart';
import 'package:graduation_med_/util/splash_botton.dart';
import 'package:graduation_med_/util/splash_text.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomePage();
                            })
              );},
                child: 
                Text('skip',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
             SplashText(text: 'Stay Healthy and Organized', fontSize: 42.0),
              Circle(image: 'lib/images/first.png'),
               SplashText(text: 'Track medications for yourself and family members in one place.', fontSize: 20.0),
              
              Center(child: SplashBotton(text: 'Next', color: Colors.white,onTap:() {
                
              } ,))
            ],
          ),
        ),
      ),
    );
  }
}