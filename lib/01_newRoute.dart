import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("第一个路由"),
      ),
      body: const Center(
        child: Text("第一个路由"),
      ),
    );
  }
}
