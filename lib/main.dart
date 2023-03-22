import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:too_list1/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:too_list1/splash.dart';

void main() async {
  // initialisation the hive
  await Hive.initFlutter();

  //open the box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // home: HomePage(),
      
      home: 
    
      
      
          AnimatedSplashScreen(

              splash:
              Column(
                children: [
                  Text('Achille Biyack',
               style: TextStyle( fontSize: 25),
                  ),
                
              Icon(

               Icons.download_rounded,
              ),
                ],
              ),
              duration: 5000,
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Color.fromARGB(255, 93, 88, 47),

              /* Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  child: Text(
                    'By ACHILLE BIYACK',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ) , */

              nextScreen: HomePage(),
        
      ),
      /*  Center(
      Container(
        child: Text('By ACHILLE BIYACK',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      )*/

      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
