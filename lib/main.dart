import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/03_button.dart';
import 'package:flutter_practice/01_newRoute.dart';
import 'package:flutter_practice/02_text.dart';
import 'package:flutter_practice/04_iconAndImage.dart';
import 'package:flutter_practice/tipRoute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      routes: {
        "new_route": (context) => const NewRoute(),
        "text_demo": (context) => const TextDemo(),
        "button_demo": (context) => const ButtonDemo(),
        "icon_image_demo": (context) => const IconAndImageDemo(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Application"),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              child: const Text("打开第一个路由菜单页面"),
              onPressed: () {
                Navigator.pushNamed(context, "new_route");
              },
            ),
            TextButton(
              onPressed: () async {
                var result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const TipRoute(text: "你好，我是tip参数");
                }));
                if (kDebugMode) {
                  print("返回值：$result");
                }
              },
              child: const Text("打开提示页面"),
            ),
            TextButton(
              child: const Text("打开文本样式页面"),
              onPressed: () {
                Navigator.pushNamed(context, "text_demo");
              },
            ),
            TextButton(
              child: const Text("打开按钮页面"),
              onPressed: () {
                Navigator.pushNamed(context, "button_demo");
              },
            ),
            TextButton(
              child: const Text("打开图片和Icon页面"),
              onPressed: () {
                Navigator.pushNamed(context, "icon_image_demo");
              },
            )
          ],
        ),
      ),
    );
  }
}
