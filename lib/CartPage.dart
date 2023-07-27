import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/http/service_manager.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var showTime = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        title: Text("购物车"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: IconButton(
              onPressed: () {
                _showDialog(context);
              },
              icon: Icon(Icons.edit),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getCart(),
            _getCart(),
            // _getCart(),
            // _getCart(),
            // _getCart(),
            // _getCart(),
            // _getCart(),
            // _getCart(),
          ],
        )

      ),
    );
  }

  void _showDialog(widgetContext) {
    showCupertinoDialog(
        context: widgetContext,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("this   is"),
            content: Text("that is"),
            actions: [
              CupertinoDialogAction(
                child: Text("text"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: Text("text"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  Widget _getCart(){
   return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(
              "https://img-blog.csdnimg.cn/20201014180756919.png?x-oss-process=image/resize,m_fixed,h_224,w_224",
              scale: 2,
            ),
            Text(
              "test",
            ),

          ],
        ),
      ),
      color: Color(0xffffff),
      margin: EdgeInsets.all(10),
    );
  }
}
