import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/newRoute.dart';
import 'package:flutter_practice/text.dart';
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
        "text_demo": (context) => const TextDemo()
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
              child: const Text("打开第一个路由菜单"),
              onPressed: () {
                Navigator.pushNamed(context, "new_route");
              },
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const TipRoute(text: "你好，我是tip参数");
                }));
                if (kDebugMode) {
                  print("返回值：$result");
                }
              },
              child: const Text("打开提示页"),
            ),
            TextButton(
              child: const Text("打开文本样式"),
              onPressed: () {
                Navigator.pushNamed(context, "text_demo");
              },
            )
          ],
        ),
      ),
    );
  }
}
