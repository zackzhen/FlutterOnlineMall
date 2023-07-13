import 'package:flutter/material.dart';

class GoodsPage extends StatefulWidget {
  const GoodsPage({super.key});

  @override
  State<GoodsPage> createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
              title: Text("支持"),
              onTap: () {},
            ),
            ListTile(
              title: Text("支持"),
              onTap: () {},
            ),
            CheckboxListTile(
                value: true, title: Text("参数一"), onChanged: (value) {}),
            CheckboxListTile(
                value: true, title: Text("参数二"), onChanged: (value) {}),
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
