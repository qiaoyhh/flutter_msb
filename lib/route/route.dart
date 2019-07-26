import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_msb/route/route_handlers.dart';

class Routers {
  static String web = "/web";
  static String video = "/video";


  static void configureRoutes(Router router){
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context,Map<String,List<String>> params){
          print("route is not find !");
        });


    router.define(web, handler: webViewHandler);

    router.define(video, handler: videoHandler);

  }
}
