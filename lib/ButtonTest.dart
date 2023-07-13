import 'package:flutter/material.dart';

class ButtonTest extends StatefulWidget {
  const ButtonTest({Key? key}) : super(key: key);

  @override
  State<ButtonTest> createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),
      body: DefaultTextStyle(
        //1.设置文本默认样式
        style: const TextStyle(
          color:Colors.red,
          fontSize: 15.0,
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text("hello world"),
            Text("I am Jack"),
            Text("I am Jack",
              style: TextStyle(
                  inherit: false, //2.不继承默认样式
                  color: Colors.grey,
                  wordSpacing:5,

              ),
            ),
            Icon( Icons.phone ,
            size: 100.0,
            color: Colors.blue,),
            Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: "Home: "
                  ),
                  TextSpan(
                      text: "https://flutterchina.club",
                      style: TextStyle(
                          color: Colors.blue
                      ),
                      // recognizer: _tapRecognizer
                  ),
                ]
            ))
          ],
        ),
      )
    );
  }
}


