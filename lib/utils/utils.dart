import 'package:flutter/cupertino.dart';

class Utils {
  static Size appSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static double appWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static double appHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}