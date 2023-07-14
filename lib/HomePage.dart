import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var images = [
    'https://img-blog.csdnimg.cn/20210401205249606.png',
    'https://img-blog.csdnimg.cn/20210401205249606.png'
  ];
  var _control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // DecoratedBox(
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //   ),
      //   child: Padding(
      //     padding: EdgeInsets.only(left: 10, top: 45, right: 10, bottom: 0),
      //     child: TextField(
      //         controller: _control,
      //         style: TextStyle(color: Colors.white),
      //         decoration: InputDecoration(
      //             icon: Icon(
      //               Icons.search,
      //               color: Colors.white,
      //             ),
      //             suffix: TextButton(
      //               onPressed: () {
      //                 if (_control.value.text.isEmpty) {
      //                   Fluttertoast.showToast(
      //                       msg: "This is Center Short Toast");
      //                   return;
      //                 }
      //               },
      //               child: Text(
      //                 "搜索",
      //                 style: TextStyle(color: Colors.white, fontSize: 16),
      //               ),
      //             ))),
      //   ),
      // ),
      Container(
        height: 250,
        child: Swiper(
          itemBuilder: (context, index) {
            final image = images[index];
            return Image.network(
              image,
              fit: BoxFit.fill,
              height: 20,

            );
          },
          // indicatorLayout: PageIndicatorLayout.COLOR,
          autoplay: false,
          itemCount: images.length,
          pagination: const SwiperPagination(),
          control: const SwiperControl(),
        ),
      ),
      Padding(padding: EdgeInsets.all(10)),
      Row(
        children: [
          FlutterLogo(
            textColor: Colors.black,
            size: 100,
            style: FlutterLogoStyle.stacked,
          ),
          Padding(padding: EdgeInsets.all(20)),
          Container(
            width: 100,
            height: 100,
            color: Color(0xFF3Ceeff).withAlpha(20),
            child: FlutterLogo(
              size: 100,
              style: FlutterLogoStyle.stacked,
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey.withAlpha(20),
            child: FlutterLogo(
              size: 100,
              style: FlutterLogoStyle.stacked,
            ),
          ),
        ],
      ),
      // ButtonBar(
      //   alignment: MainAxisAlignment.center,
      //   children: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.sms)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
      //   ],
      // ),
      // Wrap(
      //   children: [
      //     Chip(label: Text("test")),
      //     Chip(label: Text("abc")),
      //     Chip(label: Text("efg")),
      //   ],
      // ),
      // Wrap(
      //   children: [
      //     Checkbox(value: true, onChanged: (value) {}),
      //     Checkbox(value: true, onChanged: (value) {}),
      //     Checkbox(value: true, onChanged: (value) {}),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     CircleAvatar(
      //       child: Icon(Icons.person),
      //     ),
      //     const SizedBox(
      //       width: 8,
      //     ),
      //     CircleAvatar(
      //       child: Text("郑"),
      //     )
      //   ],
      // ),
      //     Divider(
      //       thickness: 1,
      //       color: Colors.grey,
      //       indent: 40,
      //       endIndent: 40,
      //     )
    ]));
  }
}
