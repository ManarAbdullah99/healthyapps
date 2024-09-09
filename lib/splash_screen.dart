
import 'package:best_flutter_ui/navigation_home_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState(); 
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return SafeArea (
      child:EasySplashScreen(
          loaderColor: Color.fromARGB(255, 62, 47, 33),
           logo:         
            Image.asset(
          'assets/images/splash.png',
          )
        ,
          logoWidth:200,

      showLoader: true,
      loadingText: const Text("Loading...",
      textAlign: TextAlign.center,
      style: TextStyle(
        color:Color.fromARGB(255, 110, 77, 49),//255, 210, 173,146 //d2ad92
        fontSize: 18,
        shadows: <Shadow>[
          Shadow(
            color: Colors.black,
            offset: Offset(-0.2,0.7),
            blurRadius: 0.5,
          ),
          ],
          ),
      ),
      navigator:  const NavigationHomeScreen (),
      durationInSeconds: 3,
      ),
    );
  }
}