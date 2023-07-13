import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/FormTestRoute.dart';
import 'package:untitled/ListViewBbb.dart';
import 'package:untitled/util/navigator_util.dart';

import 'HomePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  
  String _getTitleName(index){
    var _hoem = "首页";
    switch(index){
      case 0:
        _hoem = "首页";
        break;
      case 1:
        _hoem = "社区";
        break;
      case 2:
        _hoem = "我的";
        break;
    }
    
    return _hoem;
  }
  DateTime? _lastPressedAt; // 上次点击时间

  // 退出app
  Future<bool> exitApp() async {
    if (_lastPressedAt == null ||
        DateTime.now().difference(_lastPressedAt!) > Duration(seconds: 2)) {
      Fluttertoast.showToast(
          msg: "再按一次退出应用",
          backgroundColor: Colors.grey,
          toastLength: Toast.LENGTH_SHORT,
          fontSize: 14);
      //两次点击间隔超过2秒则重新计时
      _lastPressedAt = DateTime.now();
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(_getTitleName(0)),),

      body: WillPopScope(
        onWillPop: exitApp,
        child: PageView(
            children:<Widget>[
              HomePage(),
              ListViewBbb()

            ]

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (index) {
         NavigatorUtil.push(context, FormTest());
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label:_getTitleName(0),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label:_getTitleName(1),
              icon: Icon(Icons.message)
          ),
          BottomNavigationBarItem(
              label:_getTitleName(2),
              icon: Icon(Icons.account_circle)
          )

        ],
      ),
      
    );
  }
}
