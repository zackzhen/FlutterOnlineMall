import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({Key? key}) : super(key: key);

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ss'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          DecoratedBox(
              decoration:const BoxDecoration(color: Colors.red),
              child: Transform.scale(scale: 1.2,
                  child: const Text("Hello world")
              )
          ),
          const Padding(padding: EdgeInsets.all(20),
          child: Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)),
          // Image.asset('/assets/images/img.png')

          Container(

            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/img.png'))
            ),
          ),
          const Image(
            image:  NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100.0,
          )

    // Container(
    // decoration: const BoxDecoration(
    // image: DecorationImage(
    // image: AssetImage("assets/images/img.png"),
    // fit: BoxFit.cover,
    // ),
    // )),



        ],
      )
    );

    // return
  }
}
