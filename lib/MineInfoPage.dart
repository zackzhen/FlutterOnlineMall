import 'package:flutter/material.dart';

class MineInfoPage extends StatefulWidget {
  const MineInfoPage({super.key});

  @override
  State<MineInfoPage> createState() => _MineInfoPageState();
}

class _MineInfoPageState extends State<MineInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(padding: EdgeInsets.all(50)),
          Container(
            color:Colors.green,
            width: double.infinity,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(30)),
                FlutterLogo(
                  textColor: Colors.black,
                  size: 100,
                  style: FlutterLogoStyle.stacked,
                )
              ],
            ),
          ),

          
          _getRowWidget("我的积分"),
          _getRowWidget("我的浏览"),
          _getRowWidget("常见问题"),
          _getRowWidget("关于我们"),
        ],
      ),
    );
  }

  Widget _getRowWidget(String title) {
    return Card(
        child: Row(
      children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: Icon(
            Icons.info,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(title),
      ],
    ));
  }
}
