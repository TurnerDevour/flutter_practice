import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("按钮"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("normal")),
          TextButton(onPressed: () {}, child: const Text("Submit")),
          OutlinedButton(onPressed: () {}, child: const Text("normal")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          ElevatedButton.icon(icon: const Icon(Icons.send),label: const Text("发送"),onPressed: (){}),
          OutlinedButton.icon(icon: const Icon(Icons.add),label: const Text("添加"),onPressed: (){}),
          TextButton.icon(icon: const Icon(Icons.info),label: const Text("信息"),onPressed: (){})
        ],
      ),
    );
  }
}
