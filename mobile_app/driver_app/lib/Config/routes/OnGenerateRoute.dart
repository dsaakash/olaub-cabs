import 'package:driver_app/Config/routes/PageConstants.dart';
import 'package:driver_app/view/ErrorScreen.dart';
import 'package:driver_app/view/HomeScreen.dart';
import 'package:driver_app/view/SplashScreen.dart';
import 'package:flutter/material.dart';



class OnGenerateRoute{


  static Route<dynamic> routes(RouteSettings settings){
    var args = settings.arguments;
    switch(settings.name){

      case PageConstants.splashScreen:
        {
          return  materialPageRoute(widget: const SplashScreen());
        }

        case PageConstants.homeScreen:
        {
          return  materialPageRoute(widget: const HomeScreen());
        }
      default:
        {
          return materialPageRoute(widget: const ErrorScreen());
        }



    }
  }

}

MaterialPageRoute materialPageRoute({required Widget widget}){
  return MaterialPageRoute(builder: (_)=>widget);

}