import 'package:flutter/material.dart';

class IconAndImageDemo extends StatelessWidget {
  const IconAndImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String icons = "";
    // accessible: 0xe03e
    icons += "\uE03e";
    // error:  0xe237
    icons += " \uE237";
    // fingerprint: 0xe287
    icons += " \uE287";

    return Scaffold(
      appBar: AppBar(
        title: const Text("图片及ICON"),
      ),
      body: Column(
        children: [
          // const Image(
          //   image: AssetImage("images/avatar.png"),
          //   width: 100.0,
          // ),
          // Image.asset(
          //   "images/avatar.png",
          //   width: 100.0,
          // ),
          // const Image(
          //   image: NetworkImage(
          //       "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
          //   width: 100,
          // ),
          Image.network(
            "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            width: 100,
            height: 200,
            fit: BoxFit.scaleDown,
            //BoxFit.none //BoxFit.fitWidth //BoxFit.fitHeight //BoxFit.cover //BoxFit.contain //BoxFit.fill,
            color: Colors.green,
            colorBlendMode: BlendMode.darken,
            repeat: ImageRepeat.repeat,
          ),
          Text(
            icons,
            style: const TextStyle(
              fontFamily: "MaterialIcons",
              fontSize: 34.0,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
