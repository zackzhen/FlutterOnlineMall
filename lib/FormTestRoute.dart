import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';


class FormTest extends StatefulWidget {
  const FormTest({Key? key}) : super(key: key);

  @override
  State<FormTest> createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  // final TextEditingController _unameController = TextEditingController();
  // final TextEditingController _pwdController = TextEditingController();
  // final GlobalKey _formKey = GlobalKey<FormState>();
  TextEditingController _controller_user = TextEditingController();
  TextEditingController _controller_pass = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final Uri _url = Uri.parse('https://flutter.dev');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant FormTest oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title:const Text('用户登录'),
      actions: [
        IconButton(onPressed: (){

        }, icon: Text("注册",
        style: TextStyle(
          fontSize: 16,
        ),))
      ],
      leading: BackButton(
        onPressed: (){
         Navigator.pop(context);
        },
        color: Colors.white,
      ),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(25),
            child: Image.network("https://static3.sycdn.imooc.com/static/img/common/signlogo.png")),

             // Image.asset("assets/images/img.png",width: 100,height: 100,),
            
             Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              child: TextField(
                controller:_controller_user,
                autofocus: true,
                decoration:  InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color:  Colors.red,
                            width: 2
                        )
                    ),
                  suffix: IconButton(
                    onPressed: (){
                      setState(() {
                        _controller_user.clear();
                      });
                    },
                    icon: const Icon(Icons.clear,size: 15,),
                  ),
                ),
              ),),
             Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20),
              child: TextField(
                controller: _controller_pass,
                autofocus: false,
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "密码8-16位",
                    prefixIcon: const Icon(Icons.email),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color:  Colors.red,
                            width: 2
                        )
                    ),
                    // suffixIcon: const Icon(Icons.clear,color: Colors.black,),
                    suffix: IconButton(
                      onPressed: (){
                        setState(() {
                          _controller_pass.clear();

                        });
                      },
                      icon: const Icon(Icons.clear,size: 15,),
                      ),



                ),

              ),
              ),
            // 登录按钮
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("登 录"),
                      ),
                      onPressed: ()  {

                        _launchUrl();
                        // 通过_formKey.currentState 获取FormState后，
                        // 调用validate()方法校验用户名密码是否合法，校验
                        // 通过后再提交数据。
                        // if ((_formKey.currentState as FormState).validate()) {
                        //   //验证通过提交数据
                        // }
                        // _controller_pass.text = "New text";

                        // var url = Uri.https('https://flutter.cn/assets/translator/js/translator.js', 'whatsit/create');
                        // var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
                        // print('Response status: ${response.statusCode}');
                        // print('Response body: ${response.body}');
                        //
                        // print(await http.read(Uri.https('https://flutter.cn/assets/translator/js/translator.js', 'foobar.txt')));
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
