import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/FormTestRoute.dart';
import 'package:untitled/GoodsPage.dart';
import 'package:untitled/util/navigator_util.dart';

import 'CartPage.dart';
import 'HomePage.dart';
import 'MineInfoPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _getTitleName(index) {
    var _hoem = "首页";
    switch (index) {
      case 0:
        _hoem = "首页";
        break;
      case 1:
        _hoem = "分类";
        break;
      case 2:
        _hoem = "购物车";
        break;
      case 3:
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
  var _currentPageIndex = 0;
  var _pageController = PageController(initialPage: 0);
  var _pageList = [HomePage(), GoodsPage(), CartPage(), MineInfoPage()];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: WillPopScope(
        onWillPop: exitApp,
        child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            itemCount: _pageList.length,
            itemBuilder: (context, index) {
              return _pageList.elementAt(index);
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPageIndex,

          // // 选中图标主题
          // selectedIconTheme: IconThemeData(
          //   // 图标颜色
          //   color: Colors.red,
          //   // 图标大小
          //   size: 32,
          //   // 图标透明度
          //   opacity: 1.0,
          // ),
          // // 未选中图标主题
          // unselectedIconTheme: IconThemeData(
          //   color: Colors.blue,
          //   size: 24,
          //   opacity: 0.5,
          // ),

        onTap: (index) {
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: _getTitleName(0), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: _getTitleName(1), icon: Icon(Icons.fastfood)),
          BottomNavigationBarItem(
              label: _getTitleName(2), icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(
              label: _getTitleName(3), icon: Icon(Icons.account_circle))
        ],
      ),
    );
  }
}
