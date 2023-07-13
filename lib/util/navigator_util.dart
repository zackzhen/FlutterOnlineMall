import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/util/SwitchAnimation.dart';

class NavigatorUtil {
  //跳转页面
  static push(BuildContext context, Widget page) async {
    // final result = await Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => page));
    return await Navigator.push(context,CustomRouteSlide(page));
  }
}
