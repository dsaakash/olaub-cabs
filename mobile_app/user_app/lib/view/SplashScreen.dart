import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_app/Config/AllDimensions.dart';
import 'package:user_app/Config/AllImages.dart';
import 'package:user_app/Config/AllTitles.dart';
import 'package:user_app/Config/Allcolors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle
    //   (
    //
    //   statusBarColor: Allcolors.yellowColour
    // ));

    return SafeArea(
      child: Scaffold(
        body: Container(
              color: Allcolors.yellowColour,
              height: AllDimensions.infinity,
              width: AllDimensions.infinity,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              
              
              Positioned(
                  left: 50,
                  right: 50,
                  top: 0,
                  bottom: 0,
                  child: Image.asset(AllImages.logoImage)
              ),
              
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                
                child: Container(
                  alignment: Alignment.center,
                  child: Text(AllTitles.poweredTitle),

                  
                )
              )
              
            ],
            
          ),
          
          
        )


      ),
    );
  }
}
