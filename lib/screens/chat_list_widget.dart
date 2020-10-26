import 'package:flutter/material.dart';
import 'chat_item_widget.dart';
import 'package:whats_app_clone/models/chat_item.dart';

class ChatListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int position) {
        return Column(
          children: <Widget>[
            ChatItemWidget(
              chatItem: data[position],
            ),
            Divider(
              height: 10,
            ),
          ],
        );
      },
    );
  }
}

List<ChatItem> data = [
  ChatItem(
    avatarUrl:
        'https://aws.revistavanityfair.es/prod/designs/v1/assets/785x589/188829.jpg',
    name: 'Emmmmy',
    message: 'Oye... te extraño, ya contestame',
    date: DateTime.parse('2020-13-02 18:32'),
    unreadMessage: 12,
    checked: ChatStatus.check,
  ),
];
