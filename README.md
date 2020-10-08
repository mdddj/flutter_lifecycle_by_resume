

# flutter_lifecycle_by_resume


[![pub](https://badgen.net/pub/v/flutter_lifecycle_by_resume)](https://pub.dev/packages/flutter_lifecycle_by_resume)

在用户息灭屏幕后,又重新亮屏，即原生安卓生命周期onResume方法,提供了执行该生命周期代码的功能。

### 添加依赖
```dart
flutter_lifecycle_by_resume : ^0.0.3
```

### 快速使用
将with ResumeMixin<MyWidget> 添加到您的State<MyWidget>类中，然后实现void onResume(BuildContext context)abstract方法。当设备亮屏后，将调用此方法中的代码
```dart
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

```

### 建议反馈
请加qq群1102781545
