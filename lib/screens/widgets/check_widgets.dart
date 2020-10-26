import 'package:flutter/material.dart';
import 'package:whats_app_clone/models/chat_item.dart';

class CheckWidget extends StatelessWidget {
  final ChatStatus chatStatus;
  CheckWidget({@required this.chatStatus});
  @override
  Widget build(BuildContext context) {
    switch (chatStatus) {
      case ChatStatus.uncheck:
        return Container();
        break;
      case ChatStatus.check:
        return Icon(Icons.check);
        break;
      case ChatStatus.doublecheck:
        return Icon(Icons.done_all);
        break;
      case ChatStatus.doublegreencheck:
        return Icon(
          Icons.done_all,
          color: Colors.blue,
        );
        break;
    }
  }
}
