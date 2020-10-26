import 'package:flutter/material.dart';
import 'package:whats_app_clone/models/chat_item.dart';

class ChatItemWidget extends StatelessWidget {
  final ChatItem chatItem;
  ChatItemWidget({@required this.chatItem});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chatItem.avatarUrl),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            chatItem.name,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          Text(
            chatItem.lastMessagetime,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
      subtitle: Text(chatItem.shortMessage),
    );
  }
}
