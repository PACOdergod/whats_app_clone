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
          'https://es.web.img2.acsta.net/newsv7/19/10/03/16/22/4411665.jpg',
      name: 'Avatar',
      message: 'La nueva pelcula de avatar saldra el proximo año',
      date: DateTime.parse('2020-13-02 18:32'))
];
