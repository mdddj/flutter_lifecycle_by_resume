import 'package:flutter/cupertino.dart';

import 'lifecycle_event_handler.dart';

mixin ResumeMixin<T extends StatefulWidget> on State<T> {

  late LifecycleEventHandler _lifecycleEventHandler;

  @override
  void initState() {
    super.initState();
    _lifecycleEventHandler = LifecycleEventHandler(resumeCallBack: () async {
      onResume(context);
    });
    WidgetsBinding.instance.addObserver(_lifecycleEventHandler);
  }

  /// 当用户熄灭屏幕后
  ///
  /// 再重新打开
  ///
  /// 执行此方法
  void onResume(BuildContext context);

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(_lifecycleEventHandler);
  }
}