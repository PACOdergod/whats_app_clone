import 'package:flutter/material.dart';
import 'package:whats_app_clone/models/chat_item.dart';
import 'package:whats_app_clone/screens/widgets/check_widgets.dart';

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
            style: TextStyle(
                fontSize: 15,
                color: chatItem.haveUnreadMessage ? Colors.green : Colors.grey),
          )
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CheckWidget(chatStatus: chatItem.checked),
              SizedBox(
                width: 10,
              ),
              Text(chatItem.shortMessage),
            ],
          ),
          chatItem.haveUnreadMessage
              ? Container(
                  padding: EdgeInsets.all(5.0),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  child: Text(
                    '${chatItem.unreadMessageCount}',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
