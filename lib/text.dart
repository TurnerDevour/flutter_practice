import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("文本及样式"),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 50,
            color: Colors.blueAccent,
            child: const Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          const Text(
            "Hello world! I'm Jack.",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const Text(
            "Hello world",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Hello world",
            style: TextStyle(
              color: Colors.blueAccent,
              background: Paint()..color = Colors.orange,
              decoration: TextDecoration.underline,
              fontSize: 40,
              fontWeight: FontWeight.w700,
              fontFamily: "Courier",
              decorationStyle: TextDecorationStyle.dashed
            ),
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: "Home:",
                ),
                TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
              ]
            )
          ),
          DefaultTextStyle(
              style: const TextStyle(
                color: Colors.lime,
                fontSize: 50
              ),
              child: Column(
                children: const [
                  Text("hello world"),
                  Text("hello world"),
                  Text(
                      "hello world",
                      style: TextStyle(
                        inherit: false,
                        color: Colors.grey,
                        fontSize: 20
                      ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
