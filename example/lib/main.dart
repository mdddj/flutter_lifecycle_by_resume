import 'package:flutter/material.dart';
import 'package:flutter_lifecycle_by_resume/minix.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with ResumeMixin<MyApp>{

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('测试'),
        ),
        body: Container(),
      ),
    );
  }

  @override
  void onResume(BuildContext context) {
    // TODO: implement onResume
    /// 此处写亮屏后的逻辑代码
    print("todo in this");
  }
}
