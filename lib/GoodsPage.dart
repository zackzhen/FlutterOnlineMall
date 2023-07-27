import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GoodsPage extends StatefulWidget {
  const GoodsPage({super.key});

  @override
  State<GoodsPage> createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // 创建渠道
  var channel = const MethodChannel("your_channel_name");

  void callNativeMethod(String msg) {
    try {
      // 通过渠道，调用原生代码代码的方法
      Future future = channel.invokeMethod("your_method_name", {"msg": msg} );
      // 打印执行的结果
      print(future.toString());
    } on PlatformException catch(e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("商品分类"),
        centerTitle: true,
        // actions: [
        //   IconButton(onPressed: () {
        //     _scaffoldKey.currentState?.openDrawer();
        //   }, icon: Icon(Icons.more_vert_outlined))
        // ],
        // leading: BackButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("原生通信"),
              onTap: () {
                callNativeMethod("ss");
              },
            ),
            ListTile(
              title: Text("支持"),
              subtitle: Text("no"),
                leading: IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.abc),
                ),

              // contentPadding: EdgeInsets.all(20),
              onTap: () {},
            ),
            CheckboxListTile(
                value: true, title: Text("参数一"), onChanged: (value) {}),
            CheckboxListTile(
                value: true, title: Text("参数二"), onChanged: (value) {}),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.abc), label: Text("click me")),
            TextButton(onPressed: (){}, child: Text("ss"),),
            TextButton(onPressed: (){}, child: Text("ss"),)

          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list_outlined),
                trailing: const Text(
                  "查看",
                  // style: TextStyle(color: Colors.green, fontSize: 14),
                  style: TextStyle(color: Colors.green, fontSize: 14),
                ),
                title: Text("List item $index"));
          }),
    );
  }
}
