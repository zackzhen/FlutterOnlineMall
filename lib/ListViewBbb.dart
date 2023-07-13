import 'dart:developer';

import 'package:flutter/material.dart';

// class ListViewBbb extends StatelessWidget {

class ListViewBbb extends StatefulWidget {
  const ListViewBbb({super.key});

  @override
  State<ListViewBbb> createState() => _ListViewBbbState();
}

class _ListViewBbbState extends State<ListViewBbb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list_outlined),
                trailing:  const Text(
                  "查看",
                  // style: TextStyle(color: Colors.green, fontSize: 14),
                  style: TextStyle(color: Colors.green, fontSize: 14),
                ),
                title: Text("List item $index"));

          }),
    );
  }
}
